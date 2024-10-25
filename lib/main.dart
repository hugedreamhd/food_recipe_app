import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/core/routes.dart';
import 'package:food_recipe_app/03_food_recipe_app/di/di_setup.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

// final getIt = GetIt.instance;

void main() {
  diSetup();
  runApp(
    const RecipeApp(),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => GetIt.instance<SavedRecipeDetailViewModel>(),
        ),
        // 다른 ViewModel이 있으면 추가
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
