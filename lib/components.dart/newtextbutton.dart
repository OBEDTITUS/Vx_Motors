import 'package:flutter/material.dart';

import 'package:ty_motors/views/pages/login.dart';

class Newtextbutton extends StatelessWidget {
  const Newtextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.transparent, width: 2),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
      child: Text(
        'LogIn Now',
        style: TextStyle(
          color: Colors.transparent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
