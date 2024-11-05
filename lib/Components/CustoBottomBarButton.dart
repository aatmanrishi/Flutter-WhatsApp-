import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/Controller/mainController.dart';

class CustomBottomBarButtons extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final int index;
  const CustomBottomBarButtons(
      {super.key,
      required this.icon,
      required this.selectedIcon,
      required this.label,
      required this.index});

  @override
  Widget build(BuildContext context) {
    final mainController = Get.find<MainController>();
    return Obx(() {
      return InkWell(
        onTap: () {
          mainController.pageIndex.value = index;
          if (mainController.pageIndex.value > 0) {
            mainController.ClickSearch.value = false;
          }
        },
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mainController.pageIndex.value == index
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 123, 255, 127)),
                      child: Center(
                        child: Icon(selectedIcon,
                            size: 25, color: Colors.green[900]),
                      ),
                    )
                  : Container(
                      width: 60,
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                      child: Icon(
                        icon,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
              SizedBox(
                height: 8,
              ),
              Text(
                '$label',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          ),
        ),
      );
    });
  }
}
