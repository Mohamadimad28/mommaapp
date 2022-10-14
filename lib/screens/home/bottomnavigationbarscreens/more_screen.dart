import 'package:flutter/material.dart';
import 'package:mommaapp/preferences/shared_pref_controller.dart';
import 'package:mommaapp/screens/home/bottomnavigationbarscreens/home_screen.dart';

import '../../../componts/list_tile_Profile.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.transparent,
            // backgroundImage: AssetImage('images/person.png',),
            child: Image.asset(
              'images/person.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              Text(
                'John Deo',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF444657),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                SharedPrefController().email,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF444657),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTileProfile(
            icon: Icon(
              Icons.home_outlined,
              size: 28,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            ontap: () {
              Navigator.pushNamed(context, '/home_details_screen');
            },
          ),
          ListTileProfile(
            icon: Icon(
              Icons.person_outline,
              size: 28,
            ),
            title: Text(
              'MyProfile',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            ontap: () {},
          ),
          ListTileProfile(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 28,
            ),
            title: Text(
              'Shop',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            ontap: () {},
          ),
          ListTileProfile(
            icon: Icon(
              Icons.event_outlined,
              size: 28,
            ),
            title: Text(
              'Event',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            ontap: () {},
          ),
          ListTileProfile(
              icon: Icon(
                Icons.logout_outlined,
                size: 28,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              ontap: () async {
                await _confirmLogout();
              }),
        ],
      ),
    );
  }

  Future<void> _confirmLogout() async {
    bool? loggedOut = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(width: 2, color: Colors.blue),
          ),
          actionsAlignment: MainAxisAlignment.start,
          actionsOverflowButtonSpacing: 25,
          actionsOverflowDirection: VerticalDirection.down,
          title: Text('Logout'),
          content: Text('Are you suer?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
    if (loggedOut ?? false) {
      await logout();
    }
  }

  Future<void> logout() async {
    bool cleared = await SharedPrefController().clear();
    if (cleared) {
      Navigator.pushReplacementNamed(context, '/login_screen');
    }
  }
}
