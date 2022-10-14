import 'package:flutter/material.dart';

import '../modles/handbagstap.dart';

class CartCardItems extends StatefulWidget {
  CartCardItems(this.data, {Key? key}) : super(key: key);
  HandBagsTap data;

  @override
  State<CartCardItems> createState() => _CartCardItemsState();
}

class _CartCardItemsState extends State<CartCardItems> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _inCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      // clipBehavior:,
      elevation: 3,
      shadowColor: Colors.grey,
      child: Container(
        width: 400,
        height: 100,
        child: Row(
          children: [
            Expanded(child: Image.asset(widget.data.image!)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.title!,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF111111),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.data.subtitle!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFA1A1B4),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${widget.data.prics!}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF111111),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '\$150',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFA1A1B4),
                        fontWeight: FontWeight.normal,
                        decorationThickness: 1,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(
                      Icons.close_rounded,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: _inCounter,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey.shade200,
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        // Spacer(),
                        Text(
                          '$_counter',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        // Spacer(),
                        SizedBox(
                          width: 5,
                        ),

                        InkWell(
                          onTap: _incrementCounter,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey.shade200,
                            foregroundColor: Colors.black,
                            child: Icon(
                              Icons.add,
                              // color: Colors.black,
                            ),
                          ),
                        ),
                        // Container(
                        //   width: 30,
                        //   height: 30,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(50),
                        //     color: Colors.black,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
