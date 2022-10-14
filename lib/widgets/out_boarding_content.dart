import 'package:flutter/material.dart';

class OutBoardingContent extends StatelessWidget {
  const OutBoardingContent(
      {Key? key,
      required this.images,
      required this.title,
      required this.suptitle})
      : super(key: key);
  final String images;
  final String title;
  final String suptitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(images),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'SourceSans'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            suptitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Color(0xFF716F87),
                fontFamily: 'SourceSansPro'),
          ),
        ],
      ),
    );
  }
}
