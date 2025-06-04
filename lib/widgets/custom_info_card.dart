import 'package:flutter/material.dart';

class CustomInfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomInfoCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFE1EAF2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 28, color: Color(0xFF2B475E)),
        ),
        title: Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
