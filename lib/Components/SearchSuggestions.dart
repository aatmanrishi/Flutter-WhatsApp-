import 'package:flutter/material.dart';

class SearchSuggestion extends StatelessWidget {
  const SearchSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> chipList = [
      'How to be an astronaut',
      'Can I be Hulk?',
      'Can I become President of USA',
      'Career pivot advice',
      'Disco Playlist',
      'Mindful Journal Plan',
      'Top Ocean docs',
    ];

    return SizedBox(
      height: 150,
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          runSpacing: 5,
          spacing: 5,
          children: chipList.map((chipName) {
            return Chip(
              backgroundColor:
                  Colors.white, // Use backgroundColor instead of color
              label: Text(
                chipName,
                style: TextStyle(color: Colors.black), // Customize text color
              ),
              elevation: 2, // Optional: Add shadow for better visibility
              // Remove the delete icon by not including deleteIcon or onDeleted
            );
          }).toList(),
        ),
      ),
    );
  }
}
