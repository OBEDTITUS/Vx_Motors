import 'package:flutter/material.dart';
import 'package:ty_motors/views/widgets/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String confirmedEmail = "000";
  String confirmedPassword = "000";

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Login",
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
                controller: controllerEmail,
                decoration: InputDecoration(
                  labelText: "Username/Email",
                  hintText: "Enter your username/email",
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
                controller: controllerPassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  contentPadding: EdgeInsets.all(1),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                onLoginPressed();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.teal,
              ),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (controllerEmail.text == confirmedEmail &&
        controllerPassword.text == confirmedPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    }
  }
}
