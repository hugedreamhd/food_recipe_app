import 'package:flutter/cupertino.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository.dart';

class SavedRecipeViewModel with ChangeNotifier {
  final SavedRecipeRepository savedRecipeRepository;

  SavedRecipeViewModel({
    required this.savedRecipeRepository,
  }) {
    getRecipes();
  }

  List<Recipe> _recipes = [];

  List<Recipe> get recipes => List.unmodifiable(_recipes);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> getRecipes() async {
    _isLoading = true;
    notifyListeners();

    final result = await savedRecipeRepository.getRecipes();
    switch (result) {
      case Success<List<Recipe>>():
        _recipes = result.data;

      case Error<List<Recipe>>():
        const Text('레시피를 찾을 수 없습니다');
    }
    _isLoading = false;
    notifyListeners();
  }
}
