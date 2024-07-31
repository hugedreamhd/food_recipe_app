import 'package:flutter/cupertino.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository.dart';

import '../../model/recipe.dart';

class SearchRecipesView with ChangeNotifier {
  final RecipeRepository repository;

  SearchRecipesView({
    required this.repository,
  });

  List<Recipe> _recipe = [];

  List<Recipe> get recipe => _recipe;

  bool _isLoading = false;

  bool get isLoading => _isLoading;
}
