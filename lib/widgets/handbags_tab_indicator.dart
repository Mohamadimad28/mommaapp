import 'package:flutter/material.dart';

class HandbagsTabIndicator extends StatelessWidget {
  const HandbagsTabIndicator({Key? key, this.marginEnd=0, required this.selected}) : super(key: key);
  final double marginEnd;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: selected ? 10:10,
      height:10,
      decoration: BoxDecoration(
        color: selected ? Color(0xFF6A90F2) : Color(0xFFDDDDDD),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
