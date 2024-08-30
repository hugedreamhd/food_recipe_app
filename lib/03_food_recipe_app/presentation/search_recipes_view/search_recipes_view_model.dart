import 'package:flutter/cupertino.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository.dart';

import '../../model/recipe.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecipeRepository repository;

  SearchRecipesViewModel({
    required this.repository,
  }) {
    fetchRecipe();
  }

  List<Recipe> _recipe = [];

  List<Recipe> get recipe => _recipe;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  //모든 데이터를 검색하고 결과를 알려주는 함수
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

//데이터 문자열로 검색하는 기능 함수
  void search(String value) async {
    final result = await repository.fetchRecipe();
    switch (result) {
      case Success<List<Recipe>>():
        _recipe = result.data
            .where(
                (e) => e.foodTitle.toLowerCase().contains(value.toLowerCase()))
            .toList();
        notifyListeners();

      case Error<List<Recipe>>():
        print(result.e);
    }
  }
}
