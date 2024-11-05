import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String messageDate;
  final String noOfMessages;
  const MessageTile(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.message,
      required this.messageDate,
      required this.noOfMessages});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage('$imageUrl'),
        radius: 25,
      ),
      title: Text('$name'),
      subtitle: Text('$message'),
      trailing: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(
          '$messageDate',
          style: TextStyle(color: Colors.greenAccent[400], fontSize: 12),
        ),
        SizedBox(
          height: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.greenAccent[400],
          radius: 10,
          child: Center(
            child: Text(
              '$noOfMessages',
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
