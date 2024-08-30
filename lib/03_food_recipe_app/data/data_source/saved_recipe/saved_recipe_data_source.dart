import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';

abstract interface class SavedRecipeDataSource {
  Future<List<Recipe>> getRecipe();
}