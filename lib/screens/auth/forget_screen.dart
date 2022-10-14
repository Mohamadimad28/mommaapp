import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Verify Your Account',
                style: TextStyle(fontSize: 30, fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter your Mobile Number',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF716F87),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                maxLength: 10,
                buildCounter: (context,
                    {required int currentLength,
                    int? maxLength,
                    required bool isFocused}) {
                  return null; // عشان نخفيه او نعملو اخفاء
                  // return Text('[$currentLength - $maxLength]',style: TextStyle(
                  //   color: Colors.black38,
                  //   fontSize: 13,
                  // ),);
                  // // كل هاد عشان اغير شكلها واعملو بالشكل الي بدنا اياه شكل العداد الي بكون تحت النص وبحددي كم حرف كتبت
                },
                keyboardType: TextInputType.phone,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                decoration: InputDecoration(
                    prefixText: '+972',
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: Colors.transparent
                   )
                 )

                    ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/verify_otp_screen');
                },
                child: Text(
                  'Send OTP',
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
            ],
          ),
        ),
      ),
    );
  }
}
