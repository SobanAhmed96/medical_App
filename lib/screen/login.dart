import 'package:flutter/material.dart';
import 'package:medical_store_app/screen/home.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailText = TextEditingController();
  loginfun() {
    if (emailText.text == "03123456789") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid!"),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.only(left: 10, right: 10),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              "Please Enter your Mobile Number \nto Login/Sign Up",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: emailText,
                keyboardType: TextInputType.phone,
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Enter Number",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 380,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    loginfun();
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
