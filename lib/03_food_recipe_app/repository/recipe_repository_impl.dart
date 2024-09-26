import '../core/result.dart';
import '../data/data_source/recipe/recipe_data_source.dart';
import '../model/recipe.dart';
import 'recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  RecipeRepositoryImpl({
    required RecipeDataSource recipeDataSource,
  }) : _recipeDataSource = recipeDataSource;

  @override
  Future<Result<List<Recipe>>> getRecipe() async {
    try {
      final result = await _recipeDataSource.getRecipes();
      return Result.success(result);
    } catch (e) {
      return const Result.error('레시피를 찾을 수 없습니다');
    }
  }
}
