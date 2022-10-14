import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mommaapp/preferences/shared_pref_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _errorTextEmail;
  String? _errorTextPassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _navigatorRegister;
  }

  void _navigatorRegister() => Navigator.pushNamed(context, '/register_screen');

  @override
  void dispose() {
    // TODO: implement dispose
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        children: [
          Text(
            AppLocalizations.of(context)!.sign_in,
            style: TextStyle(fontSize: 30, fontFamily: 'SourceSansPro'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            AppLocalizations.of(context)!.login_to_continue_your_account,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF716F87),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: _emailEditingController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              errorText: _errorTextEmail,
              hintText: AppLocalizations.of(context)!.email,
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
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
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
            controller: _passwordEditingController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              errorText: _errorTextPassword,
              hintText: AppLocalizations.of(context)!.password,
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
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color(0xFFD0D0D0),
            thickness: 2,
            height: 0,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: TextButton(
              onPressed: () {
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.pushNamed(context, '/forget_screen');
                });
              },
              child: Text(
                AppLocalizations.of(context)!.forget_password,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {
              _perfoemlogin();
              // Navigator.pushReplacementNamed(context, '/main_screen');
            },
            child: Text(
              AppLocalizations.of(context)!.login,
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
                  AppLocalizations.of(context)!.login_with_facebook,
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
                    text: AppLocalizations.of(context)!.dont_have_an_account,
                    style: TextStyle(color: Color(0xFF9391A4), fontSize: 18)),
                TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: AppLocalizations.of(context)!.sign_up,
                    style: TextStyle(
                        color: Color(0xFF23203F),
                        fontSize: 20,
                        fontFamily: 'SourceSans')),
              ],
            )),
          ),
        ],
      ),
    );
  }

  void _perfoemlogin() {
    if (_checkData()) {
      _login();
    }
  }

  bool _checkData() {
    if (_emailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      controllerErrorText();
      return true;
    } else {
      controllerErrorText();
    }
    return false;
  }

  void controllerErrorText() {
    setState(() {
      _errorTextEmail =
          _emailEditingController.text.isEmpty ? AppLocalizations.of(context)!.error_email: null;
      _errorTextPassword =
          _passwordEditingController.text.isEmpty ? AppLocalizations.of(context)!.error_password : null;
    });
  }

  void _login() async {
    await SharedPrefController().save(email: _emailEditingController.text);
    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(
            content: Text(
              'Logged in successfully',
            ),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        )
        .closed
        .then(
            (value) => Navigator.pushReplacementNamed(context, '/main_screen'));
  }
}
