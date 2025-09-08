import 'package:flutter/material.dart';

class CarComponent extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const CarComponent({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: 75,
            width: 113,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(45),
              color: Colors.transparent,
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // SizedBox(height: 5),
                Image.asset(imagePath, fit: BoxFit.cover),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
