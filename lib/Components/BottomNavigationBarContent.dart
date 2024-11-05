import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Components/CustoBottomBarButton.dart';

class BottomNavigationBarContent extends StatelessWidget {
  const BottomNavigationBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Colors.grey.shade300, // Color of the border
                width: 0.5, // Width of the border
              ),
            ),
          ),
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomBarButtons(
                  index: 0,
                  icon: Icons.chat_outlined,
                  selectedIcon: Icons.mark_unread_chat_alt_outlined,
                  label: 'Chats'),
              CustomBottomBarButtons(
                  index: 1,
                  icon: Icons.bubble_chart_outlined,
                  selectedIcon: Icons.bubble_chart_rounded,
                  label: 'Updates'),
              CustomBottomBarButtons(
                  index: 2,
                  icon: Icons.groups_outlined,
                  selectedIcon: Icons.groups,
                  label: 'Communities'),
              CustomBottomBarButtons(
                  index: 3,
                  icon: Icons.call_outlined,
                  selectedIcon: Icons.call_sharp,
                  label: 'Chats'),
            ],
          ),
        );
  }
}