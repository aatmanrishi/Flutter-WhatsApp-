import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
  final String label;
  const ChatsTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[100]),
      child: Center(
        child: Text(
          '$label',
          style:
              TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
