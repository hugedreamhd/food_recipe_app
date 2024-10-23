import 'package:food_recipe_app/03_food_recipe_app/model/recipe_ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required String id,
    required String foodTitle,
    required String creator,
    required String time,
    required double rating,
    required String imagePath,
    required List<RecipeIngredient> ingredients,
    @Default(false) bool isRead,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, Object?> json) => _$RecipeFromJson(json);
}