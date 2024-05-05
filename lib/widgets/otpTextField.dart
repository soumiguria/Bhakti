import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF8C0944)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
