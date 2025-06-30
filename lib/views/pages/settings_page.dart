import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationSwitched = false;
  bool isLocationSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding: EdgeInsets.all(5),
                    prefixIcon: Icon(Icons.search),

                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Divider(color: Colors.amber, thickness: 3),
              ListTile(
                title: Text("Notifications"),
                trailing: Switch(
                  value: isNotificationSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isNotificationSwitched = value;
                    });
                  },
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        //backgroundColor: Colors.tealAccent,
                        title: Text(
                          "Notification Permissions",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                        content: Text(
                          "Display on Phone Background \n"
                          "Display on Phone Lock Screen \n"
                          "Display over other apps \n",
                          style: TextStyle(color: Colors.blue),
                        ),
                        actions: [
                          CloseButton(
                            color: Colors.redAccent,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ListTile(
                title: Text("Location"),
                trailing: Switch(
                  value: isLocationSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isLocationSwitched = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("App Info"),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        //backgroundColor: Colors.tealAccent,
                        title: Text(
                          "App Information",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                        content: Text(
                          "App Version: 1.0.0\n"
                          "Build Number: 1\n"
                          "Build Date: 2025-01-01\n"
                          "Build Time: 12:00 pm\n",
                          style: TextStyle(color: Colors.blue),
                        ),
                        actions: [
                          CloseButton(
                            color: Colors.redAccent,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
