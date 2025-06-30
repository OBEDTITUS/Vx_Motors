import 'package:flutter/material.dart';

import 'package:ty_motors/views/widgets/widget_tree.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController controllerSurname = TextEditingController();
  TextEditingController controllerFirstName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerVerifyPassword = TextEditingController();

  @override
  void dispose() {
    controllerSurname.dispose();
    controllerFirstName.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
    controllerVerifyPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              "Register Account",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: controllerSurname,
                decoration: InputDecoration(
                  labelText: "Surname",
                  hintText: "Enter your Surname",
                  contentPadding: EdgeInsets.all(1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: controllerFirstName,
                decoration: InputDecoration(
                  labelText: "FirstName",
                  hintText: "Enter your First Name",
                  contentPadding: EdgeInsets.all(1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: controllerEmail,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your Email address",
                  contentPadding: EdgeInsets.all(1),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: controllerPassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your Password",
                  contentPadding: EdgeInsets.all(1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: controllerVerifyPassword,
                decoration: InputDecoration(
                  labelText: "Verify Password",
                  hintText: "Enter your Password again",
                  contentPadding: EdgeInsets.all(1),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            SizedBox(height: 5),

            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.teal,
              ),
              child: Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
