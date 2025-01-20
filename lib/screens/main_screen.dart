import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vincentcoffeeshop/providers/bottom_nav_provider.dart';
import 'package:vincentcoffeeshop/screens/home_screen.dart';
import 'package:vincentcoffeeshop/screens/profile_screen.dart';
import 'package:vincentcoffeeshop/widgets/nav/custom_bottom_nav.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<BottomNavProvider>(context);

    // List of screens corresponding to the bottom navigation items
    final screens = [
      HomeScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: screens[navProvider.currentIndex], // Display selected screen
      bottomNavigationBar: CustomBottomNav(), // Custom bottom navigation
    );
  }
}
