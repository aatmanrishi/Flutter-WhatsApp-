import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Components/AddStories.dart';
import 'package:whatsapp_clone/Components/Storytile.dart';
import 'package:whatsapp_clone/Utitlity/updatesUtitity.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          AddStories(),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recent Updates',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey[700])),
              SizedBox(
                height: 2.5,
              ),
              ...animeUpdatesData.map((animeStatus) {
                return StoryTile(
                    name: animeStatus["name"].toString(),
                    profilePic: animeStatus["profilepic"].toString(),
                    day: animeStatus["day"].toString());
              })
            ],
          ))
        ],
      ),
    );
  }
}
