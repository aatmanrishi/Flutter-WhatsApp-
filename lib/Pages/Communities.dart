import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Components/AddNewCommunity.dart';
import 'package:whatsapp_clone/Components/CommuntiesTile.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 240, 237, 237),
      child: ListView(
        children: [
          AddCommunity(),
          Communtiestile(),
          Communtiestile(),
        ],
      ),
    );
  }
}
