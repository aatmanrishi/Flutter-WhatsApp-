import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Components/MessageTile.dart';
import 'package:whatsapp_clone/Utitlity/chatsUtility.dart';

class Chatsection extends StatelessWidget {
  const Chatsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ...animeData.map((anime) {
            return MessageTile(
              imageUrl: anime["profilepic"].toString(),
              name: anime["name"].toString(),
              message: anime["userMessage"].toString(),
              messageDate: anime["day"].toString(),
              noOfMessages: anime["noOfMsges"].toString(),
            );
          })
        ],
      ),
    );
  }
}
