import 'package:flutter/widgets.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/core/result.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/data/recipe_data_source.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  RecipeRepositoryImpl({
    required RecipeDataSource recipeDataSource,
  }) : _recipeDataSource = recipeDataSource;

  @override
  Future<Result<List<Recipe>>> fetchRecipe() async {
    try {
      final result = await _recipeDataSource.getRecipes();
      return Result.success(result);
    } catch (e) {
      return const Result.error('fail load');
    }

  }


}


