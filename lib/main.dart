import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mommaapp/preferences/shared_pref_controller.dart';
import 'package:mommaapp/screens/auth/forget_screen.dart';
import 'package:mommaapp/screens/auth/login_screen.dart';
import 'package:mommaapp/screens/auth/register.dart';
import 'package:mommaapp/screens/auth/verify_otp.dart';
import 'package:mommaapp/screens/home/home_details.dart';
import 'package:mommaapp/screens/home/bottomnavigationbarscreens/home_screen.dart';
import 'package:mommaapp/screens/home/main_screen.dart';
import 'package:mommaapp/screens/home/product_details_screen.dart';
import 'package:mommaapp/screens/launch_screen.dart';
import 'package:mommaapp/screens/out_boarding_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      locale: const Locale('en '),
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/out_boarding_screen': (context) => OutBoardingScreen(),
        '/login_screen': (context) => LogInScreen(),
        '/register_screen': (context) => RegisterScreen(),
        '/forget_screen': (context) => ForgetScreen(),
        '/verify_otp_screen': (context) => VerifyOtpScreen(),
        '/home_details_screen': (context) => HomeDetailsScreen(),
        '/main_screen': (context) => MainScreen(),
      },
    );
  }
}
