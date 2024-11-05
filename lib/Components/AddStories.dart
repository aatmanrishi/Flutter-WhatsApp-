import 'package:flutter/material.dart';

class AddStories extends StatelessWidget {
  const AddStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Status',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/mainImage.jpeg'),
              child: Stack(
                children: [
                  Positioned(
                      bottom: -2,
                      right: -2,
                      child: Icon(
                        size: 24,
                        Icons.circle,
                        color: Colors.white,
                      )),
                  Positioned(
                      bottom: -2,
                      right: -2,
                      child: Icon(
                        size: 24,
                        Icons.add_circle_outlined,
                        color: Colors.green[700],
                      )),
                ],
              ),
            ),
            title: Text(
              'My Status',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              'Tap to add status update',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),
        ]);
  }
}
