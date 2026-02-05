import 'package:flutter/material.dart';
import 'package:lipa_mobile_app/views/home/home_screen.dart';
import 'package:lipa_mobile_app/views/home/constants/app_sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lipa App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFF4F4F4),
      ),
      home: const ResponsiveWrapper(child: HomeScreen()),
    );
  }
}

/// Wraps the HomeScreen to initialize responsive scaling
class ResponsiveWrapper extends StatelessWidget {
  final Widget child;
  const ResponsiveWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // Initialize AppSizes for responsive scaling
    AppSizes.init(context);

    return child;
  }
}
