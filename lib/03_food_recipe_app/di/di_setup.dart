import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/mock_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/data/data_source/saved_recipe/mock_saved_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/main/main_screen_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository_impl.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
//data layer 전부 싱글턴
  getIt.registerSingleton<RecipeDataSource>(
    MockRecipeDataSource(),
  );
  getIt.registerSingleton<RecipeRepository>(
    RecipeRepositoryImpl(
      recipeDataSource: getIt(),
    ),
  );
  getIt.registerSingleton<SavedRecipeRepository>(
    SavedRecipeRepositoryImpl(
      savedRecipeDataSource: MockSavedRecipeDataSource(),
    ),
  );

  //viewModel은 Factory
  getIt.registerFactory(
    () => SearchRecipesViewModel(
      recipeRepository: getIt(),
    ),
  );

  getIt.registerFactory(
    () => MainScreenViewModel(),
  );

  getIt.registerFactory<SavedRecipeDetailViewModel>(
    () => SavedRecipeDetailViewModel(
      savedRecipeRepository: getIt(),
    ),
  );
}
