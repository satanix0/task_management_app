import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task_management_app/utils/global_colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          log('Login Tapped');
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
              color: GlobalColors.mainColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                ),
              ]),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                GlobalColors.mainColor,
              ),
            ),
            child: const Text('login'),
          ),
        ),
      ),
    );
  }
}
