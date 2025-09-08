import 'package:flutter/material.dart';

class Forgotpasswordbutton extends StatelessWidget {
  const Forgotpasswordbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.transparent, width: 2),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
      ),
    );
  }
}
