import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabahi_chat_app/Screens/signup_screen.dart';
import 'package:tabahi_chat_app/utils/my_thems.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void moveToNextPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (c) => const SignupScreen(),
        ));
  }

  @override
  void initState() {
    print("Hi");
    Timer(const Duration(seconds: 2), moveToNextPage);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [MyThem.primary, MyThem.purple],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Card(
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome to Chat App",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
