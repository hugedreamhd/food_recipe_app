import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipes_ui_state.freezed.dart';

part 'search_recipes_ui_state.g.dart';

@freezed
class SearchRecipesUiState with _$SearchRecipesUiState {
  const factory SearchRecipesUiState({
    @Default([])List<Recipe> recipe,
    @Default(false) bool isLoading,
  }) = _SearchRecipesUiState;

  factory SearchRecipesUiState.fromJson(Map<String, Object?> json) => _$SearchRecipesUiStateFromJson(json);
}