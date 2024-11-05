import 'package:flutter/material.dart';

class AddCommunity extends StatelessWidget {
  const AddCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.grey[350]),
          height: 50,
          width: 50,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                  child: Icon(
                Icons.groups_rounded,
                color: Colors.white,
                size: 40,
              )),
              Positioned(
                child: Icon(
                  Icons.add_circle_outlined,
                  color: Colors.green[700],
                ),
                bottom: -3,
                right: -3,
              )
            ],
          ),
        ),
        title: Text(
          'News Community',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
