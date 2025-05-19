import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tatib Diponegoro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF26B3A4), // Teal color matching the image
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adding the circle overlay seen in the image
            Expanded(
              child: Stack(
                children: [
                  // Large circular overlay in top right
                  Positioned(
                    top: -100,
                    right: -100,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1D9989), // Darker teal for the circle
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  // Content centered at the bottom
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Graduation cap icon
                          const Icon(
                            Icons.school, // Using a graduation cap icon
                            color: Colors.white,
                            size: 60,
                          ),
                          const SizedBox(height: 16),
                          // App name
                          const Text(
                            'Tatib Diponegoro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder for home screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tatib Diponegoro'),
      ),
      body: const Center(
        child: Text('Welcome to Tatib Diponegoro App!'),
      ),
    );
  }
}
