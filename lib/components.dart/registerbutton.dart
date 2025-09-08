import 'package:flutter/material.dart';
import 'package:ty_motors/views/pages/authpage.dart';

class Registerbutton extends StatelessWidget {
  const Registerbutton({super.key});

  get onTap => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthPage()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),

        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),

          child: Center(
            child: Text(
              "Register",
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
