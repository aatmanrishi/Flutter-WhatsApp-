import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Components/ChatSection.dart';
import 'package:whatsapp_clone/Components/ChatsTabBar.dart';
import 'package:whatsapp_clone/Components/CustomSearchField.dart';


class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          // SearchBar
          CustomSearchField(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.archive_outlined)),
                  Text(
                    'Archived',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, letterSpacing: 2),
                  )
                ],
              ),
              Spacer(),
              Text(
                '2',
                style: TextStyle(color: Colors.green[400]),
              ),
              SizedBox(
                width: 25,
              )
            ],
          ),
          // Tabs
          ChatsTabBar(),
          SizedBox(
            height: 10,
          ),
          Chatsection()
        ],
      ),
    );
  }
}
