import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  const OutBoardingIndicator(
      {Key? key, this.marginEnd = 0, required this.selected})
      : super(key: key);
  final double marginEnd;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: selected ? 30 : 10,
      height: 4,
      decoration: BoxDecoration(
        color: selected ? Color(0xFF6A90F2) : Color(0xFFDDDDDD),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
