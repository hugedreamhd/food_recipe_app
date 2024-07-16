import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/data/mock_recipe_data_source.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository_impl.dart';

import 'presentation/home/home_screen.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(
          repository: RecipeRepositoryImpl(
        recipeDataSource: MockRecipeDataSource(),
      )),
    );
  }
}

void main() {
  runApp(const RecipeApp());
}
