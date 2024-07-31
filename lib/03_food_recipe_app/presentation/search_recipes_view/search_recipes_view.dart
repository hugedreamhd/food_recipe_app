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

  void fetchRecipe() async {
    _isLoading = true;
    notifyListeners();

    final result = await repository.fetchRecipe();
    switch (result) {
      case Success<List<Recipe>>():
        _recipe = result.data;
        _isLoading = false;
        notifyListeners();

      case Error<List<Recipe>>():
        print(result.e);
    }
  }
}
