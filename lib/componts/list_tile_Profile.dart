import 'package:flutter/material.dart';

class ListTileProfile extends StatelessWidget {
  ListTileProfile({
    Key? key,
    required this.icon,
    required this.title,
    required this.ontap,
  }) : super(key: key);
  final Icon icon;
  final Text title;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: title,
      onTap: ontap,
    );
  }
}
