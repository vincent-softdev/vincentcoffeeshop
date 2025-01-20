import 'package:flutter/material.dart';
import '../widgets/buttons/custom_button.dart';
import '../widgets/texts/styled_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),

              // Image Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/1.jpeg'),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/2.webp'),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/3.webp'),
                    radius: 50,
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Title Section
              StyledText(
                text: "The Fashion App That Makes You Look Your Best",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // Description
              StyledText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),

              SizedBox(height: 30),

              // Button
              CustomButton(
                text: "Let's Get Started",
                onPressed: () {
                  // Handle navigation
                  Navigator.pushNamed(context, '/home');
                },
              ),

              SizedBox(height: 20),

              // Sign-in text
              GestureDetector(
                onTap: () {
                  // Handle sign-in logic
                },
                child: Text(
                  "Already have an account? Sign In",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
