import 'package:flutter/cupertino.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_ui_state.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository.dart';

import '../../model/recipe.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecipeRepository recipeRepository;

  SearchRecipesViewModel({
    required this.recipeRepository,
  }) {
    fetchRecipe();
  }

  SearchRecipesUiState _state = SearchRecipesUiState();

  SearchRecipesUiState get state => _state;

  //모든 데이터를 검색하고 결과를 알려주는 함수
  void fetchRecipe() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await recipeRepository.getRecipe();
    switch (result) {
      case Success<List<Recipe>>():
        _state = state.copyWith(recipe: result.data);
        _state = state.copyWith(isLoading: false);
        notifyListeners();

      case Error<List<Recipe>>():
        Text(result.e);
    }
  }

//데이터 문자열로 검색하는 기능 함수
  void search(String value) async {
    final result = await recipeRepository.getRecipe();
    switch (result) {
      case Success<List<Recipe>>():
        _state = state.copyWith(
          recipe: result.data
              .where((e) =>
                  e.foodTitle.toLowerCase().contains(value.toLowerCase()))
              .toList(),
        );
        notifyListeners();

      case Error<List<Recipe>>():
        Text(result.e);
    }
  }
}
