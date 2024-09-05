import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/mock_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/main_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/main_screen_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/sign_in/sign_in_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/sing_up/sign_up_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/splash/splash_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository_impl.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
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
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (context) => MainScreenViewModel(),
            child: const MainScreen(),
          );
        }),
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
        return ChangeNotifierProvider(
          create: (context) => SearchRecipesViewModel(
            recipeRepository: RecipeRepositoryImpl(
              recipeDataSource: MockRecipeDataSource(),
            ),
          ),
          child: const SearchRecipesScreen(),
        );
      },
    ),
  ],
);
