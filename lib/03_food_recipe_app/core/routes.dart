import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/mock_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/data/data_source/saved_recipe/mock_saved_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/main_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/sign_in/sign_in_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/sing_up/sign_up_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/splash/splash_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository_impl.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository_impl.dart';
import 'package:go_router/go_router.dart';
import '../presentation/search_recipes_view/search_recipes_screen.dart';

final router = GoRouter(
  initialLocation: '/main_screen',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/main_screen',
      builder: (context, state) => MainScreen(
        recipeRepository: RecipeRepositoryImpl(
          recipeDataSource: MockRecipeDataSource(),
        ),
        savedRecipeRepository: SavedRecipeRepositoryImpl(
            recipeDataSource: MockSavedRecipeDataSource()),
      ),
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/search_recipes',
      builder: (context, state) {
        return SearchRecipesScreen(
          viewModel: SearchRecipesViewModel(
            repository: RecipeRepositoryImpl(
              recipeDataSource: MockRecipeDataSource(),
            ),
          ),
        );
      },
    ),
  ],
);
