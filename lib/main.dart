import 'package:flutter/material.dart';

import 'widgets/custom_info_card.dart';
import 'widgets/custom_title_text.dart';

void main() {
  runApp(BusniessCard());
}

class BusniessCard extends StatelessWidget {
  BusniessCard({super.key});
  double redius = 101;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: redius,
              backgroundColor: Colors.white,
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("images/cat.jpg"),
              ),
            ),
            CustomTitleText(
              text: "Mohammed Bin Talib",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: "Pacifico",
              ),
            ),
            CustomTitleText(
              text: "FLUTTER DEVELOPER",
              style: TextStyle(
                color: Color(0xFF6C8090),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Color(0xFF6C8090),
              thickness: 2,
              indent: 60,
              endIndent: 60,
            ),
            CustomInfoCard(icon: Icons.phone, text: "+967 123456789"),
            CustomInfoCard(icon: Icons.email, text: "mohammed@gmail.com"),
          ],
        ),
      ),
    );
  }
}
