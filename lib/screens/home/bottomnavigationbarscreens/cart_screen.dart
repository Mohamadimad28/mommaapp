import 'package:flutter/material.dart';
import 'package:mommaapp/componts/cart_card_items.dart';

import '../../../modles/handbagstap.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        children: [
          Text(
            '4 items available',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: ListView.builder(
              itemCount: HandBagsTap.handBags.length,
              itemBuilder: (context, index) {
                return CartCardItems(HandBagsTap.handBags[index]);
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'Sub total:',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFA1A1B4),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$100',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Tax(15%):',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFA1A1B4),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$15',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                // height: 10,
                thickness: 3,
                color: Color(0xFFECECEC),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$15',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/login_screen');
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Color(0xFF6A90F2)),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, '/login_screen');
                },
                child: Text(
                  'Cancel Order',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
