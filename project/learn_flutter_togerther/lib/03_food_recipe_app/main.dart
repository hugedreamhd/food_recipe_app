import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/core/routes.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

void main() {
  runApp(const RecipeApp());
}
