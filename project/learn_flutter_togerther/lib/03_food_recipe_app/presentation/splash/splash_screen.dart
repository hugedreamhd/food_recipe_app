import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/02_material_design/presentation/component/big_button.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/text_styles.dart';

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
                      style: TextStyles.tittleTextBold.copyWith(
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
                        onTap: () {},
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
