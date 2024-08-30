import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';

abstract interface class SavedRecipeRepository {
  Future<Result<List<Recipe>>> getRecipes();
}