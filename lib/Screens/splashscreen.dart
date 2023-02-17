import 'package:flutter/material.dart';
import 'package:tabahi_chat_app/utils/my_thems.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [MyThem.primary, MyThem.purple],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
