import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Components/AppBar.dart';
import 'package:whatsapp_clone/Components/BottomNavigationBarContent.dart';
import 'package:whatsapp_clone/Components/FloatinActionButton.dart';
import 'package:whatsapp_clone/Controller/mainController.dart';
import 'package:whatsapp_clone/Pages/Calls.dart';
import 'package:whatsapp_clone/Pages/Chats.dart';
import 'package:whatsapp_clone/Pages/Communities.dart';
import 'package:whatsapp_clone/Pages/Updates.dart';

class Roots extends StatelessWidget {
  const Roots({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Chats(),
      Updates(),
      Communities(),
      Calls(),
    ];

    List<Widget> appBarList = [
      CustomAppBar(
        pageTitle: 'WhatsApp',
        pageTitleColor: Colors.green[600],
        iconButtonList: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      CustomAppBar(
        pageTitle: 'Updates',
        iconButtonList: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      CustomAppBar(
        pageTitle: 'Communities',
        iconButtonList: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      CustomAppBar(
        pageTitle: 'Calls',
        iconButtonList: [
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
    ];

    List<List<CustomFloatingActionButton>> buttonWidget = [
      [
        CustomFloatingActionButton(
          containerColor: const Color.fromARGB(255, 236, 236, 236),
          buttonIcon: Icons.circle_outlined,
          borderRadius: BorderRadius.circular(15),
          iconColor: Colors.pink.shade400,
          iconSize: 30,
        ),
        CustomFloatingActionButton(
          containerColor: Colors.green,
          buttonIcon: Icons.message,
          borderRadius: BorderRadius.circular(15),
          iconColor: Colors.white,
          iconSize: 22,
        ),
      ],
      [
        CustomFloatingActionButton(
          containerColor: const Color.fromARGB(255, 236, 236, 236),
          buttonIcon: Icons.edit,
          borderRadius: BorderRadius.circular(15),
          iconColor: Colors.black,
          iconSize: 24,
        ),
        CustomFloatingActionButton(
          containerColor: Colors.green,
          buttonIcon: Icons.camera_alt_rounded,
          borderRadius: BorderRadius.circular(15),
          iconColor: Colors.white,
          iconSize: 22,
        ),
      ],
      [
        CustomFloatingActionButton(
          containerColor: Colors.green,
          buttonIcon: Icons.add_ic_call_rounded,
          borderRadius: BorderRadius.circular(15),
          iconColor: Colors.white,
          iconSize: 22,
        ),
      ],
    ];

    final mainController = Get.find<MainController>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40), // Adjust this height as needed
          child: Obx(() {
            return mainController.ClickSearch.value == false
                ? appBarList[mainController.pageIndex.value]
                : SizedBox(
                    height: 5); // Placeholder height when ClickSearch is true
          }),
        ),
        body: Obx(() {
          return pages[mainController.pageIndex.value];
        }),
        bottomNavigationBar: BottomNavigationBarContent(),
        floatingActionButton: Obx(() {
          if (mainController.pageIndex.value == 2) {
            return Container();
          } else if (mainController.pageIndex.value == 3) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: buttonWidget[2],
              ),
            );
          } else {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: buttonWidget[mainController.pageIndex.value],
              ),
            );
          }
        }),
      ),
    );
  }
}
