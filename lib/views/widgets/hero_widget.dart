import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key, //required this.title},
  });
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
          child: Text(
            "Rents",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
              letterSpacing: 8,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
