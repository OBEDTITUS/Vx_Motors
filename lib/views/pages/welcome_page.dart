import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ty_motors/views/pages/login.dart';
import 'package:ty_motors/views/pages/register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            FittedBox(
              child: Lottie.asset(
                'assets/lotties/Animation4.json',

                fit: BoxFit.cover,
                height: 1000,
                //repeat: false,
              ),
            ),
            FittedBox(
              child: Text(
                "Vx Motors",
                style: TextStyle(
                  fontSize: 60,
                  letterSpacing: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),

            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterPage();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 35),
                backgroundColor: Colors.teal,
              ),
              child: Text("Get Started"),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },

              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 35),
              ),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
