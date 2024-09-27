import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/ingredient.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository.dart';

class SavedRecipeDetailViewModel with ChangeNotifier {
  final SavedRecipeRepository savedRecipeRepository;

  SavedRecipeDetailViewModel({
    required this.savedRecipeRepository,
  });

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Recipe? _recipe;

  Recipe? get recipe => _recipe;

  List<Ingredient> _ingredients = [];

  List<Ingredient> get ingredients => _ingredients;

  bool _isIngredientSelected = true;

  bool get isIngredientSelected => _isIngredientSelected;

  void toggleButton(bool isIngredient) {
    _isIngredientSelected = isIngredient;
    notifyListeners();
  }

  Future<void> getRecipeById(String id) async {
    if (_recipe != null) return; //이미 로드 된 경우에 중복 호출 방지

    _isLoading = true;
    notifyListeners();

    final result = await savedRecipeRepository.getRecipeById(id);
    switch (result) {
      case Success<Recipe>():
        _recipe = result.data;
        _ingredients = _recipe?.ingredients ?? [];
      case Error<Recipe>():
        print('레시피를 찾을 수 없습니다.');
    }
    _isLoading = false;
    notifyListeners();
  }
}
