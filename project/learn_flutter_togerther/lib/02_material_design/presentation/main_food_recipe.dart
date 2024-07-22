import 'package:flutter/material.dart';

import '../../03_food_recipe_app/presentation/sing_up/sign_up_screen.dart';

class MainFoodRecipe extends StatelessWidget {
  const MainFoodRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SignUpScreen(),
      ),
    );
  }
}
