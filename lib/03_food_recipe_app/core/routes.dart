import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/main/main_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/main/main_screen_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe_detail/saved_recipe_detail_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/sign_in/sign_in_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/sing_up/sign_up_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../di/di_setup.dart';
import '../presentation/search_recipes_view/search_recipes_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
        path: '/main_screen',
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => getIt<MainScreenViewModel>(),
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
          create: (_) => getIt<SearchRecipesViewModel>(),
          child: const SearchRecipesScreen(),
        );
      },
    ),
    GoRoute(
      path: '/saved_recipe_detail',
      builder: (context, state) {
        final recipe = state.extra as Recipe?;
        if (recipe == null) {
          return const Center(child: Text('레시피가 없습니다.'));
        }
        return ChangeNotifierProvider<SavedRecipeDetailViewModel>(
          create: (_) => getIt<SavedRecipeDetailViewModel>(),
          child: Builder(
            builder: (context) => SavedRecipeDetailScreen(recipe: recipe),
          ),
        );
      },
    ),
  ],
);
