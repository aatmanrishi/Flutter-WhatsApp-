import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whatsapp_clone/Components/SearchSuggestions.dart';
import 'package:whatsapp_clone/Controller/mainController.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final mainController = Get.find<MainController>();
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          // Search Bar
          Container(
            height: 50,
            child: Obx(() {
              return mainController.ClickSearch.value == true
                  ? Row(
                      children: [
                        Container(
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 247, 241, 241),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                mainController.ClickSearch.value = false;
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintMaxLines: 1,
                              prefixIcon: Icon(
                                Icons.circle_outlined,
                                color: Colors.pink[400],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                borderSide: BorderSide.none,
                              ),
                              hintText: 'ASK Meta Ai or Search',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 128, 128, 128),
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 247, 241, 241),
                            ),
                          ),
                        ),
                      ],
                    )
                  : GestureDetector(
                      onTap: () {
                        mainController.ClickSearch.value = true;
                      },
                      child: TextField(
                        onTap: () {
                          mainController.ClickSearch.value = true;
                        },
                        decoration: InputDecoration(
                          hintMaxLines: 1,
                          prefixIcon: Icon(
                            Icons.circle_outlined,
                            color: Colors.pink[400],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'ASK Meta Ai or Search',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: const Color.fromARGB(255, 128, 128, 128),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 247, 241, 241),
                        ),
                      ),
                    );
            }),
          ),
          Obx(() {
            return Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                mainController.ClickSearch.value == true
                    ? SearchSuggestion()
                    : SizedBox(
                        height: 5,
                      ),
              ],
            );
            // Chip List Section
          }),
        ],
      ),
    );
  }
}
