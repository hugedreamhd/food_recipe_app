import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_recipe.freezed.dart';

part 'food_recipe.g.dart';

@freezed
class FoodRecipe with _$FoodRecipe {
  const factory FoodRecipe({
    required String foodTitle,
    required String creator,
    required int time,
    required double rating,
    required String imagePath,
  }) = _FoodRecipe;

  factory FoodRecipe.fromJson(Map<String, Object?> json) => _$FoodRecipeFromJson(json);
}