import 'package:flutter/material.dart';

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
            const Text(
              "Mohammed Bin Talib",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: "Pacifico",
              ),
            ),
            const Text(
              "FLUTTER DEVELOPER",
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
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.phone, size: 32, color: Color(0xFF2B475E)),
                title: const Text(
                  "+967 123456789",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.email, size: 32, color: Color(0xFF2B475E)),
                title: const Text(
                  "mohammed@gmail.com",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
