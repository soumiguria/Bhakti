import 'dart:async';
import 'package:drema_challenge/loginPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const splashDuration = Duration(seconds: 2);

    void navigateToLoginPage() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    }

    Timer(splashDuration, navigateToLoginPage);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity, 
        height: double.infinity,
        child: Image.asset(
          'assets/images/varanasi-dev-diwali.jpg', 
          fit: BoxFit.cover, 
        ),
      ),
    );
  }
}
