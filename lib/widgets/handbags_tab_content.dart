import 'package:flutter/material.dart';

class HandbagsTabContent extends StatelessWidget {
  const HandbagsTabContent({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF0F1F6)),
              child: Image.asset(image),
            ),
          ),
        ],
      ),
    );
  }
}
