import "package:flutter/material.dart";
import "package:ty_motors/components.dart/carrentalcard.dart";

class AllcarsPage extends StatelessWidget {
  const AllcarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Cars"),
        centerTitle: true,

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.5),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Divider(thickness: 1.5, color: Colors.grey[400], height: 2),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 130,
                top: 1,
                bottom: 1,
                right: 135,
              ),
              child: Text(
                "Cars For Rent",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.055,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  letterSpacing: 0.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                CarRentalCard(
                  imagePath: 'assets/images/huracanspyder.jpeg',
                  text:
                      'Lamborghini Huracan Spyder\n'
                      'High-performance, mid-engine supercar\n'
                      'Naturally aspirated 5.2-liter V10 engine. ',
                  onTap: () {},
                ),
                CarRentalCard(
                  imagePath: 'assets/images/hondapilot.jpeg',
                  text:
                      'Honda Pilot\n'
                      'Spacious SUV with advanced safety features\n'
                      'Comfortable interior, family-friendly design.',
                  onTap: () {},
                ),
                CarRentalCard(
                  imagePath: 'assets/images/hilux.jpeg',
                  text:
                      'Toyota Hilux\n'
                      'Rugged pickup truck\n'
                      'Durable design, off-road capabilities.',
                  onTap: () {},
                ),
                CarRentalCard(
                  imagePath: 'assets/images/landcruizer.jpeg',
                  text:
                      'Toyota Land Cruiser\n'
                      'Luxury SUV with off-road capabilities\n'
                      'Spacious interior, advanced safety features.',
                  onTap: () {},
                ),
                CarRentalCard(
                  imagePath: 'assets/images/corolla.jpeg',
                  text:
                      'Toyota Corolla\n'
                      'Reliable and fuel-efficient sedan\n'
                      'Comfortable ride, advanced safety features.',
                  onTap: () {},
                ),
                CarRentalCard(
                  imagePath: 'assets/images/dodge.jpeg',
                  text:
                      'Dodge Charger\n'
                      'Muscle car with powerful performance\n'
                      'Aggressive styling, advanced technology features.',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
