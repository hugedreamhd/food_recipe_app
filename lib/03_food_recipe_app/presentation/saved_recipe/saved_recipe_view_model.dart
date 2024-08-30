import 'package:flutter/cupertino.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository.dart';

class SavedRecipeViewModel with ChangeNotifier {
  final SavedRecipeRepository recipeRepository;

  SavedRecipeViewModel({
    required this.recipeRepository,
  }){
    getRecipes();
  }

  List<Recipe> _recipes = [];

  List<Recipe> get recipes => List.unmodifiable(_recipes);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void getRecipes() async {
    _isLoading = true;
    notifyListeners();

    final result = await recipeRepository.getRecipes();
    switch (result) {
      case Success<List<Recipe>>():
        _recipes = result.data;

      case Error<List<Recipe>>():
        print('알수 없는 오류');
    }
    _isLoading = false;
    notifyListeners();

  }
}
