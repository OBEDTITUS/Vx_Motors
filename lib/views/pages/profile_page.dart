import 'package:flutter/material.dart';
import 'package:ty_motors/data/notifiers.dart';
import 'package:ty_motors/views/pages/settings_page.dart';
import 'package:ty_motors/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.5),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Divider(thickness: 1.5, color: Colors.grey[400], height: 2),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.deepOrange[300],
                    child: Icon(
                      Icons.camera_alt,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  "Joseph John\n",

                  style: TextStyle(fontSize: 18, color: Colors.teal[800]),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              30,
              (index) => Container(
                width: 8,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 1),
                color: index.isEven ? Colors.grey[400] : Colors.transparent,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Your Activity",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal[700],
              letterSpacing: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    margin: const EdgeInsets.only(right: 15, left: 5),
                    decoration: BoxDecoration(
                      color: Colors.teal[50],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.teal, width: 1),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.phone, color: Colors.teal[700], size: 28),
                        SizedBox(height: 8),
                        Text(
                          "Contacted",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.teal[800],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.teal[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    margin: const EdgeInsets.only(left: 5, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange[50],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepOrange, width: 1),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.car_rental,
                          color: Colors.deepOrange[700],
                          size: 20,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Rented",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange[800],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepOrange[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              30,
              (index) => Container(
                width: 8,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 1),
                color: index.isEven ? Colors.grey[400] : Colors.transparent,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 16,
                color: Colors.teal[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(Icons.settings, color: Colors.teal[700]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text(
              "Theme",
              style: TextStyle(
                fontSize: 16,
                color: Colors.teal[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
              },
              icon: ValueListenableBuilder(
                valueListenable: isDarkModeNotifier,
                builder: (context, isDarkMode, child) {
                  return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
                },
              ),
            ),
            onTap: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
          ),
          SizedBox(height: 40),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            },
            label: Text("LogOut"),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
