import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _notificationLogin;
  }

  void _notificationLogin() => Navigator.pushNamed(context, '/login_screen');

  @override
  void dispose() {
    // TODO: implement dispose

    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30, fontFamily: 'SourceSansPro'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF716F87),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'First Name',
                hintStyle: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF9391A4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            Divider(
              color: Color(0xFFD0D0D0),
              thickness: 2,
              height: 0,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Last Name',
                hintStyle: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF9391A4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            Divider(
              color: Color(0xFFD0D0D0),
              thickness: 2,
              height: 0,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF9391A4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            Divider(
              color: Color(0xFFD0D0D0),
              thickness: 2,
              height: 0,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Phone',
                hintStyle: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF9391A4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            Divider(
              color: Color(0xFFD0D0D0),
              thickness: 2,
              height: 0,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF9391A4),
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Color(0xFFD0D0D0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            Divider(
              color: Color(0xFFD0D0D0),
              thickness: 2,
              height: 0,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacementNamed(context, '/login_screen');
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Color(0xFF6A90F2)),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacementNamed(context, '/login_screen');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage('icons/facebook.png')),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Login with facebook',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Color(0xFF4267B2)),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Don’t have an account ? ',
                      style: TextStyle(color: Color(0xFF9391A4), fontSize: 18)),
                  TextSpan(
                      recognizer: _tapGestureRecognizer,
                      text: 'Login',
                      style: TextStyle(
                          color: Color(0xFF23203F),
                          fontSize: 20,
                          fontFamily: 'SourceSans')),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
