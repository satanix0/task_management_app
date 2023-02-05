import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/utils/global_colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          // 80% of the width of any screen.
          width: MediaQuery.of(context).size.width * 0.8,
          alignment: Alignment.center,
          child: Text(
            '.. or sign in with',
            style: TextStyle(
                color: GlobalColors.txtColor, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Sign Up with Google Button
              Expanded(
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                          ),
                        ]),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/images/icons/google.svg",
                        height: 30,
                      ),
                      onPressed: () {},
                      splashRadius: 30,
                    ),
                  ),
                ),
              ),
              //Sign Up with Facebook Button
              Expanded(
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                          ),
                        ]),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/images/icons/facebook.svg",
                        height: 50,
                      ),
                      onPressed: () {},
                      splashRadius: 30,
                    ),
                  ),
                ),
              ),
              //Sign Up with Email Button
              Expanded(
                child: Container(
                  height: 55,
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                          ),
                        ]),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/images/icons/email.svg",
                        height: 30,
                      ),
                      onPressed: () {},
                      splashRadius: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
