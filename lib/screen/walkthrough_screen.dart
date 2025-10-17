import 'package:flutter/material.dart';

void main() {
  MaterialApp(home:WalkthroughScreen()
  ,);
}

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30 ,right: 30,bottom: 20, top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text("Skip", style: TextStyle(fontSize: 20)),
                  ),
                 Row(
                  children: [
                    Container()
                  ],
                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
