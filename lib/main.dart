import 'package:flutter/material.dart';
import 'package:task_management_app/constants/routes.dart';
import 'package:task_management_app/screens/splash_screen.dart';

import 'screens/login.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task-ez',
      debugShowCheckedModeBanner: false,
      // home: SplashScreen()
      initialRoute: Routes.loginScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.loginScreen: (context) => const LoginScreen(),
      },
    );
  }
}
