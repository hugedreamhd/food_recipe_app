import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';

abstract interface class RecipeDataSource {
  Future<List<Recipe>> getRecipes();
}