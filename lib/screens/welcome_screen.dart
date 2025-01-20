import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/navigation_provider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delay navigation after 1 second
    Future.delayed(Duration(seconds: 2), () {
      Provider.of<NavigationProvider>(context, listen: false).completeWelcome();
    });

    return Scaffold(
      body: Center(
        child: Text(
          "Vincent Shop Welcome",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
