import 'package:flutter/material.dart';

import '../../modles/handbagstap.dart';

class ProductDetailsScreen extends StatefulWidget {
  ProductDetailsScreen(this.data, {Key? key}) : super(key: key);
  HandBagsTap data;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Product Details',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 200,
                  color: Color(0xFFFFFFFF),
                  // color: Colors.black,
                  child: Image.asset(widget.data.image!),
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          ),
                        ]),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      widget.data.title!,
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text('\$90', style: TextStyle(fontSize: 18)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text(
                      'Page',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF87879D),
                      ),
                    ),
                    Spacer(),
                    Text(
                      widget.data.prics!,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF87879D),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xFF87879D),
                        // decorationStyle: TextDecorationStyle.,
                        decorationThickness: 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.black45,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the \'1500s, when an unknown printer took a galley of type and scrambled it to make a type... ',
                            style: TextStyle(
                              color: Colors.black,
                              wordSpacing: 2,
                              fontSize: 16,
                            )),
                        TextSpan(
                            text:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the \'1500s, when an unknown printer took a galley of type and scrambled it to make a type... ',
                            style: TextStyle(
                              color: Colors.black,
                              wordSpacing: 2,
                              fontSize: 16,
                            )),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacementNamed(context, '/verify_otp_screen');
                  },
                  child: Text(
                    'Add to Cart'.toUpperCase(),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
