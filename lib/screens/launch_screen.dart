import 'package:flutter/material.dart';
import 'package:mommaapp/preferences/shared_pref_controller.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      String route =
          SharedPrefController().loggedIn ? '/main_screen' : '/login_screen';
      Navigator.pushReplacementNamed(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // alignment: Alignment.center,
            width: double.infinity,
            child: Image.asset(
              'images/launchscreen.png',
              fit: BoxFit.cover,
            ),
          ),
          // Positioned(
          //   top: 120,
          //   right: 0,
          //   left: 120,
          //   child: Text(
          //     'Momma .'.toUpperCase(),
          //     style: TextStyle(
          //       fontSize: 40,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    'M o m m a .'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSans',
                    ),
                  ),
                  Text(
                    'F A S H I O N S'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
