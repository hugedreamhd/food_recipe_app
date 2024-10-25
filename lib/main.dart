import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/routes.dart';
import 'package:food_recipe_app/03_food_recipe_app/di/di_setup.dart';

// final getIt = GetIt.instance;

void main() {
  diSetup();
  runApp(
    const RecipeApp(),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
