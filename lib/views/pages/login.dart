import 'package:flutter/material.dart';
import 'package:ty_motors/components.dart/extrabutton.dart';
import 'package:ty_motors/components.dart/forgotpasswordbutton.dart';
import 'package:ty_motors/components.dart/my_button.dart';
import 'package:ty_motors/components.dart/my_textfield.dart';

import 'package:ty_motors/components.dart/square_tile.dart';
import 'package:ty_motors/views/pages/register_page.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Icon(Icons.lock, size: 70, color: Colors.teal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                "welcome Back U've been missed",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              MyTextfield(
                controller: usernameController,
                hintText: "UserName",
                obscureText: false,
              ),
              SizedBox(height: 5),
              MyTextfield(
                controller: passwordController,
                hintText: "PassWord",
                obscureText: true,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Forgotpasswordbutton()],
                ),
              ),
              SizedBox(height: 5),
              MyButton(onTap: signUserIn),
              SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.grey[500], thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Or Continue With"),
                    ),
                    Expanded(
                      child: Divider(color: Colors.grey[600], thickness: 1),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'assets/images/facebookimage.jpeg'),
                  SizedBox(width: 20),
                  SquareTile(imagePath: 'assets/images/googleimage.jpeg'),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding: EdgeInsets.all(
                  MediaQuery.of(context).size.height * 0.04,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not A Member?'),
                    Extrabutton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      text: 'Register',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
