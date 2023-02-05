import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  final TextEditingController controller;
  final String textHint;
  final TextInputType textInputType;
  final bool obsecure;

  const TextFormGlobal(
      {super.key,
      required this.controller,
      required this.textHint,
      required this.textInputType,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
            )
          ]),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obsecure,
        decoration: InputDecoration(
          hintText: textHint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            height: 1,
          ),
        ),
      ),
    );
  }
}
