import 'package:flutter/material.dart';
import 'package:task_management_app/constants/routes.dart';
import 'package:task_management_app/screens/login.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, Routes.loginScreen),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LoginScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/splash-screen.png',
                scale: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
