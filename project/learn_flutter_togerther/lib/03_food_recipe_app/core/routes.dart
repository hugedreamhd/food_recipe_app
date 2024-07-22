import 'package:go_router/go_router.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/data/mock_recipe_data_source.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/home/home_screen.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/saved_recipe_detail_view/saved_recipe_detail_view.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/sing_up/sign_up_screen.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository_impl.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(
        repository: RecipeRepositoryImpl(
          recipeDataSource: MockRecipeDataSource(),
        ),
      ),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/saved_recipe_detail_view',
      builder: (context, state) {
        final recipe = state.extra as Recipe;
        return SavedRecipeDetailView(
          recipe: recipe,
        );
      },
    ),
  ],
);
