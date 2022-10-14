import 'package:flutter/material.dart';

class HomeDetailsScreen extends StatefulWidget {
  const HomeDetailsScreen({Key? key}) : super(key: key);


  @override
  State<HomeDetailsScreen> createState() => _HomeDetailsScreenState();
}

class _HomeDetailsScreenState extends State<HomeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Home',
          style: TextStyle(
              fontSize: 30, fontFamily: 'SourceSans', color: Colors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushNamed('/home_screen');
            },
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                  child: Image.asset(
                    'images/home1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 61,
                  left: 230,
                  child: Column(
                    children: [
                      Text(
                        'Womens',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Fashion',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.red,
                child: Image.asset(
                  'images/home2.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 61,
                right: 230,
                child: Column(
                  children: [
                    Text(
                      'Mens',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Fashion',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Row(
                  children: [
                    Image.asset(
                      'images/home3.png',
                      fit: BoxFit.fitHeight,
                    ),
                    Expanded(
                        child: Container(
                      color: Color(0xFFE9EAEE),
                    )),
                  ],
                ),
              ),
              Positioned(
                top: 61,
                left: 230,
                child: Column(
                  children: [
                    Text(
                      'Summer',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Outlet',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
