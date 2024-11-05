import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Components/ChatsTab.dart';

class ChatsTabBar extends StatelessWidget {
  const ChatsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ChatsTab(label: 'All'),
          ChatsTab(label: 'Unread'),
          ChatsTab(label: 'Favourites'),
          ChatsTab(label: 'Groups'),
        ],
      ),
    );
  }
}
