import 'package:flutter/material.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Splash Screen'),
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: const Text(
              'This is my Splash Screen',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
