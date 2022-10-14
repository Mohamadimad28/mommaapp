import 'package:flutter/material.dart';
import 'package:mommaapp/screens/home/product_details_screen.dart';

import '../modles/handbagstap.dart';

class GridViewProducts extends StatefulWidget {
  GridViewProducts(this.data, {Key? key}) : super(key: key);
  HandBagsTap data;

  @override
  State<GridViewProducts> createState() => _GridViewProductsState();
}

class _GridViewProductsState extends State<GridViewProducts> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ProductDetailsScreen(widget.data),
        //   ),
        // );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(widget.data),
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFFFFFFF),
            ),
          ),
          Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: Image(
                  image: AssetImage(widget.data.image!),
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.data.title!,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF474559),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.data.prics!,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF9E9DB0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
