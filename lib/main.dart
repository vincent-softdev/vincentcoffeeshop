import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vincentcoffeeshop/screens/landing_screen.dart';
import 'package:vincentcoffeeshop/screens/welcome_screen.dart';
import 'package:vincentcoffeeshop/providers/navigation_provider.dart';
import 'package:vincentcoffeeshop/providers/product_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(
            create: (_) => ProductProvider()..fetchProducts()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vincent Coffee Shop',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Consumer<NavigationProvider>(
          builder: (context, navigationProvider, _) {
            // Navigate between WelcomeScreen, LandingScreen, and HomeScreen based on state
            if (!navigationProvider.isWelcomeCompleted) {
              return WelcomeScreen();
            } else {
              return LandingScreen();
            }
          },
        ),
      ),
    );
  }
}
