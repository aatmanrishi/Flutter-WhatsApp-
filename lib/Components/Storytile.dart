import 'package:flutter/material.dart';

class StoryTile extends StatelessWidget {
  final String name;
  final String profilePic;
  final String day;
  const StoryTile(
      {super.key,
      required this.name,
      required this.profilePic,
      required this.day});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.5,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.lightGreenAccent[400],
            child: CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage('$profilePic'),
            ),
          ),
          title: Text(
            '$name',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            '$day',
            style: TextStyle(color: Colors.grey[500]),
          ),
        ),
        SizedBox(height: 2.5)
      ],
    );
  }
}
