import 'package:flutter/material.dart';

class CallsTile extends StatelessWidget {
  final String name;
  final String day;
  final String imgUrl;
  const CallsTile({super.key, required this.name, required this.day, required this.imgUrl});

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
            backgroundImage: NetworkImage('$imgUrl'),
          ),
          title: Text(
            '$name',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            '$day',
            style: TextStyle(color: Colors.grey[600]),
          ),
          trailing: Icon(
            Icons.phone_outlined,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 2.5)
      ],
    );
  }
}
