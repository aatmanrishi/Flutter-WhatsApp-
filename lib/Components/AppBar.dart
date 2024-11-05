import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final pageTitle;
  final Color? pageTitleColor;
  final List<IconButton> iconButtonList;
  const CustomAppBar(
      {super.key,
      Color? backgroundColor,
      Text? title,
      List<IconButton>? actions,
      required this.pageTitle,
      required this.iconButtonList,
      this.pageTitleColor});
  @override
  Widget build(BuildContext context) {
    print(pageTitle);
    print(pageTitleColor);
    print(iconButtonList);
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Colors.white,
          title: pageTitle == 'WhatsApp'
              ? Text(
                  '$pageTitle',
                  style: TextStyle(
                      color: Colors.green[400], fontWeight: FontWeight.w600),
                )
              : Text('$pageTitle'),
          actions: iconButtonList),
    );
  }
}
