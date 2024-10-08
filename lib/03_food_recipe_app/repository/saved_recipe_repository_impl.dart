import 'package:food_recipe_app/03_food_recipe_app/core/result.dart';
import 'package:food_recipe_app/03_food_recipe_app/data/data_source/saved_recipe/saved_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository.dart';

class SavedRecipeRepositoryImpl implements SavedRecipeRepository {
  final SavedRecipeDataSource _savedRecipeDataSource;

  SavedRecipeRepositoryImpl({
    required SavedRecipeDataSource savedRecipeDataSource,
  }) : _savedRecipeDataSource = savedRecipeDataSource;

  @override
  Future<Result<List<Recipe>>> getRecipes() async {
    try {
      final result = await _savedRecipeDataSource.getRecipe();
      return Result.success(result);
    } catch (e) {
      return const Result.error('로드에 실패했습니다.');
    }
  }

  @override
  Future<Result<Recipe>> getRecipeById(String id) async {
    try {
      final result = await _savedRecipeDataSource.getRecipeById(id);
      return Result.success(result);
    } catch (e) {
      return Result.error('레시피를 찾을 수 없습니다');
    }
  }
}
