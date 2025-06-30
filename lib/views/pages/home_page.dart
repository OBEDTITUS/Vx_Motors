import 'package:flutter/material.dart';
import 'package:ty_motors/data/constants.dart';
import 'package:ty_motors/views/widgets/hero_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //String? menuItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome To Vx Motors",
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            //color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,

        // backgroundColor: Colors.teal,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(child: HeroWidget()),
            // (No code needed here, just remove the commented SizedBox and do not add anything)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CATEGORIES", style: KTextStyle.titleTealText),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Divider(thickness: 1.5, color: Colors.grey[400]),
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 18, color: Colors.teal),
                  
                ],
              ),
            ),

            const SizedBox(height: 900),
            // Add more widgets here as needed
          ],
        ),
      ),
    );
  }
}
