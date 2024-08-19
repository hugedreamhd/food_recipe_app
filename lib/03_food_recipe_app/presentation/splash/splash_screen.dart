import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../component/big_button.dart';
import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('asset/images/splash_screen_back.png'),
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset(
                      'asset/images/splash_cook_image.png',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '100K Premium Recipe',
                      style: TextStyles.mediumTextBold.copyWith(
                        color: ColorStyles.white,
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      'Get\nCooking',
                      textAlign: TextAlign.center,
                      style: TextStyles.largeTextBold.copyWith(
                        color: ColorStyles.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Simple way to find Tasty Recipe',
                      style: TextStyles.mediumTextRegular.copyWith(
                        color: ColorStyles.white,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 25),
                      child: BigButton(
                        title: 'Start Cooking',
                        onTap: () {
                          context.go('/sign_in');
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
