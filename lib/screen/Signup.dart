import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailText = TextEditingController();

  TextEditingController passwordText = TextEditingController();

  bool iconcheck = true;
  handelpassShow() {
    iconcheck = !iconcheck;
  }

  handelSignup() async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailText.text,
            password: passwordText.text,
          );
          print(credential);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign up successful!"),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("The password provided is too weak."),
            backgroundColor: Colors.red,
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("The account already exists for that email."),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("$e"), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Logo.png",
                width: double.infinity,
                height: 300,
              ),
              Text(
                "Please Enter your Mobile Number \nto Sign Up",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 30),
              TextField(
                controller: emailText,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hint: Text("Enter Email"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintStyle: TextStyle(fontSize: 28),
                  labelText: "Enter Email",
                ),
              ),
              SizedBox(height: 30),

              TextField(
                controller: passwordText,
                keyboardType: TextInputType.text,
                obscureText: iconcheck,
                decoration: InputDecoration(
                  hint: Text("Enter Password"),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        handelpassShow();
                      });
                    },
                    child: Icon(Icons.remove_red_eye),
                  ),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintStyle: TextStyle(fontSize: 28),
                  labelText: "Enter Password",
                ),
              ),
              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    handelSignup();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueAccent,
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
