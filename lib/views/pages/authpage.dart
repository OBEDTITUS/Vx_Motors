import 'package:flutter/material.dart';
import 'package:ty_motors/components.dart/extrabutton.dart';
import 'package:ty_motors/components.dart/my_textfield.dart';
import 'package:ty_motors/views/widgets/widget_tree.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final codeController = TextEditingController();
  //final codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.09),
              Icon(Icons.email_outlined, size: 70, color: Colors.teal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                "Please Enter Your Email Verification Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              MyTextfield(
                controller: codeController,
                hintText: "Verification Code",
                obscureText: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Extrabutton(
                text: "Verify",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetTree()),
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
