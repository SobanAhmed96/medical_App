import 'package:flutter/material.dart';
import 'package:medical_store_app/screen/login.dart';

void main() {
  MaterialApp(home: WalkthroughScreen());
}

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  final List<Map<String, String>> walkthroughData = [
    {
      "image": "https://cdn-icons-png.flaticon.com/512/2966/2966484.png",
      "title": "Welcome to Medical Store",
      "desc": "Your trusted app for all your medical needs.",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/512/1046/1046857.png",
      "title": "Fast Delivery",
      "desc": "We deliver medicines to your doorstep quickly.",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/512/3262/3262834.png",
      "title": "Track Your Orders",
      "desc": "Easily track your orders anytime, anywhere.",
    },
  ];
  int index = 0;
  final PageController con = PageController();
  void nextPage() {
    if (index < walkthroughData.length - 1) {
      con.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
     
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // first
            Expanded(
              child: PageView.builder(
                controller: con,
                itemCount: walkthroughData.length,
                onPageChanged: (i) {
                  setState(() {
                    index = i;
                  });
                },
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          walkthroughData[index]["image"]!,
                          width: 250,
                          height: 250,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          walkthroughData[index]["title"]!,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          walkthroughData[index]["desc"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // last
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));},
                    child: Text("Skip", style: TextStyle(fontSize: 20)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: index == 0 ? Colors.blue : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: index == 1 ? Colors.blue : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: index == 2 ? Colors.blue : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nextPage();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blue,
                      ), // 🔹 Background color
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ), // 🔹 Text color (optional)
                    ),
                    child: Text(
                      index == walkthroughData.length - 1 ? "Done" : "Next",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
