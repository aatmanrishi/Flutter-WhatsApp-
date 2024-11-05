import 'package:flutter/material.dart';

class Communtiestile extends StatelessWidget {
  const Communtiestile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7),
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.5aMOgr4teHJDLmxChGKPxQHaFj?w=198&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
              ),
            ),
            title: Text(
              'Anime Drakes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            color: const Color.fromARGB(255, 237, 237, 237),
            height: 0.125,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(20, 7, 20, 7),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.greenAccent[200],
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Icon(
                  Icons.multitrack_audio_outlined,
                  color: Colors.green[900],
                  size: 30,
                ),
              ),
            ),
            title: Text(
              'Announcements',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Everyone be ready',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500),
            ),
            trailing: Text(
              '23/9/24',
              style: TextStyle(color: Colors.grey[700], fontSize: 10),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey[400],
            ),
            horizontalTitleGap: 20,
            title: Text(
              'View All',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
