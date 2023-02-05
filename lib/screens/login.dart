import 'package:flutter/material.dart';
import 'package:task_management_app/screens/widgets/buttons_global.dart';
import 'package:task_management_app/screens/widgets/social_login.dart';
import 'package:task_management_app/screens/widgets/text_form_global.dart';
import 'package:task_management_app/utils/global_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // appBar: AppBar(
          //   title: const Text('Task-ez'),
          // ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.txtColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormGlobal(
                  // Email Input here
                  controller: emailController,
                  textHint: 'Email',
                  obsecure: false,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                //Password Input here
                TextFormGlobal(
                    controller: passwordController,
                    textHint: 'Password',
                    textInputType: TextInputType.text,
                    obsecure: true),
                const SizedBox(height: 50),
                const ButtonGlobal(),
                const SizedBox(height: 50),
                const SocialLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
