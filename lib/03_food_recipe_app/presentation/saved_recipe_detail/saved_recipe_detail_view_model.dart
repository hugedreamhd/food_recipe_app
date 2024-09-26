import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
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

  Future<void> getRecipeById(String id) async {
    if(_recipe != null) return; //이미 로드 된 경우에 중복 호출 방지

    _isLoading = true;
    notifyListeners();

    final result = await savedRecipeRepository.getRecipeById(id);
    switch (result) {
      case Success<Recipe>():
        _recipe = result.data;
      case Error<Recipe>():
        print('레시피를 찾을 수 없습니다.');
    }
    _isLoading = false;
    notifyListeners();
  }
}
