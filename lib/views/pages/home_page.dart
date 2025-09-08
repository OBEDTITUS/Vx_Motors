import 'package:flutter/material.dart';
import 'package:ty_motors/components.dart/carcompo.dart';
import 'package:ty_motors/components.dart/carrentalcard.dart';

import 'package:ty_motors/data/constants.dart';
import 'package:ty_motors/views/pages/allcars_page.dart';
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(child: HeroWidget()),

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CarComponent(
                    imagePath: 'assets/images/myappcar.jpg',
                    title: "LUXURY",
                    onTap: () {
                      // Handle tap event for LUXURY
                      print("LUXURY tapped");
                    },
                  ),
                  CarComponent(
                    imagePath: 'assets/images/cropped_3.jpeg',
                    title: "SUV",
                    onTap: () {
                      // Handle tap event for SUV
                      print("SUV tapped");
                    },
                  ),
                  CarComponent(
                    imagePath: 'assets/images/cropped_2.jpeg',
                    title: "ELECTRIC",
                    onTap: () {
                      // Handle tap event for ELECTRIC
                      print("ELECTRIC tapped");
                    },
                  ),
                  CarComponent(
                    imagePath: 'assets/images/cropped_1.jpeg',
                    title: "CONVERTIBLE",
                    onTap: () {
                      // Handle tap event for CONVERTIBLE
                      print("CONVERTIBLE tapped");
                    },
                  ),
                  CarComponent(
                    imagePath: 'assets/images/Luxurycar.jpeg',
                    title: "SUPERCARS",
                    onTap: () {
                      // Handle tap event for SUPERCARS
                      print("SUPERCARS tapped");
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("BRANDS", style: KTextStyle.titleTealText),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Divider(thickness: 1.5, color: Colors.grey[400]),
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 18, color: Colors.teal),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CarComponent(
                    title: "BMW",
                    imagePath: 'assets/images/bmw_resized.png',
                    onTap: () {
                      print("BMW tapped");
                    },
                  ),
                  CarComponent(
                    title: "MERCEDES",
                    imagePath: 'assets/images/mercedes_resized.png',
                    onTap: () {
                      print("MERCEDES tapped");
                    },
                  ),
                  CarComponent(
                    title: "ROLLS ROYCE",
                    imagePath: 'assets/images/rolls_resized.png',
                    onTap: () {
                      print("ROLLS ROYCE tapped");
                    },
                  ),
                  CarComponent(
                    title: "LAMBOURGHINI",
                    imagePath: 'assets/images/lambologo.png',
                    onTap: () {
                      print("LAMBOURGHINI tapped");
                    },
                  ),
                  CarComponent(
                    title: "FERRARI",
                    imagePath: 'assets/images/ferrarilogo1.jpg',
                    onTap: () {
                      print("FERRARI tapped");
                    },
                  ),
                  CarComponent(
                    title: "PORSHE",
                    imagePath: 'assets/images/porshelogo1.jpg',
                    onTap: () {
                      print("PORSHE tapped");
                    },
                  ),
                  CarComponent(
                    title: "TOYOTA",
                    imagePath: 'assets/images/toyotalogo1.jpg',
                    onTap: () {
                      print("TOYOTA tapped");
                    },
                  ),
                  CarComponent(
                    title: "TESLA",
                    imagePath: 'assets/images/teslalogo1.png',
                    onTap: () {
                      print("TESLA tapped");
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Offer In Nigeria",
                    style: KTextStyle.titleTealText,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Divider(thickness: 1.5, color: Colors.grey[400]),
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 18, color: Colors.teal),
                ],
              ),
            ),
            CarRentalCard(
              imagePath: 'assets/images/huracanspyder.jpeg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllcarsPage()),
                );
              },
              text: "Lamborghini Huracan Evo Spyder 2024",
            ),
            CarRentalCard(
              imagePath: 'assets/images/hilux.jpeg',
              onTap: () {
                print("TESLA tapped");
              },
              text: "Toyota Hilux 2024",
            ),
            CarRentalCard(
              imagePath: 'assets/images/landcruizer.jpeg',
              onTap: () {
                print("TESLA tapped");
              },
              text: "Toyota Land Cruiser 2024",
            ),
            CarRentalCard(
              imagePath: 'assets/images/corolla.jpeg',
              onTap: () {
                print("TESLA tapped");
              },
              text: "Toyota Corolla 2024",
            ),
            CarRentalCard(
              imagePath: 'assets/images/dodge.jpeg',
              onTap: () {
                print("TESLA tapped");
              },
              text: "Dodge 2024",
            ),
            CarRentalCard(
              imagePath: 'assets/images/hondapilot.jpeg',
              onTap: () {
                print("TESLA tapped");
              },
              text: "Honda Pilot 2024",
            ),
          ],
        ),
      ),
    );
  }
}
