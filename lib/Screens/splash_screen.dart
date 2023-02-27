import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabahi_chat_app/Screens/signup_screen.dart';
import 'package:tabahi_chat_app/utils/my_thems.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<double> _animDouble;
  @override
  void initState() {
    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animDouble =
        CurvedAnimation(parent: _animController, curve: Curves.easeIn);

    super.initState();
  }

  @override
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
          children: [
            FadeTransition(
              opacity: _animDouble,
              child: const Card(
                elevation: 20,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: FlutterLogo(
                    size: 100,
                  ),
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
