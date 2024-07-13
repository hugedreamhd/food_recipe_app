import '../core/result.dart';
import '../model/recipe.dart';

abstract interface class RecipeRepository {
  Future<Result<List<Recipe>, RecipeRepositoryError>> fetchRecipe();
}
//에러처리
enum RecipeRepositoryError {
  networkError,
}
