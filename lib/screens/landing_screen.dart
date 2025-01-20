import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vincentcoffeeshop/screens/home_screen.dart';
import '../providers/navigation_provider.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      // Set state to navigate to HomeScreen
      Provider.of<NavigationProvider>(context, listen: false).completeWelcome();
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50), // Rounded edges
                    child: Image.asset(
                      'assets/images/1.jpeg', // Replace with your asset
                      height: 250,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  // Two circular images below
                  SizedBox(
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(50), // Rounded edges
                            child: Image.asset(
                              'assets/images/2.webp', // Replace with your asset
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(
                            height: 20), // Add spacing between the circles

                        // Second Circular Image
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/3.webp'),
                          radius: 50,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              // Title Section
              Text(
                "The Fashion App That Makes You Look Your Best",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),

              // Description Section
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // "Let's Get Started" Button
              ElevatedButton(
                onPressed: () {
                  // Simulate navigation manually if needed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  "Let's Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

              SizedBox(height: 20),

              // "Sign In" Section
              GestureDetector(
                onTap: () {
                  // Handle navigation or sign-in
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
