import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Components/CallsTile.dart';
import 'package:whatsapp_clone/Controller/mainController.dart';
import 'package:whatsapp_clone/Utitlity/updatesUtitity.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    final mainController = Get.find<MainController>();
    print('Calls Page - ${mainController.pageIndex.value}');
    return Center(
        child: Container(
      margin: EdgeInsets.only(top: 25),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favourites',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 1, 144, 8),
                radius: 20,
                child: Center(
                  child: Icon(
                    Icons.favorite_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Add favourite',
                style: TextStyle(
                  color: const Color.fromARGB(255, 29, 29, 29),
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recent',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black87)),
              SizedBox(
                height: 2.5,
              ),
              ...animeUpdatesData.map((data) {
                return CallsTile(
                  name: data["name"].toString(),
                  imgUrl: data["profilepic"].toString(),
                  day: data["day"].toString(),
                );
              })
            ],
          ))
        ],
      ),
    ));
  }
}
