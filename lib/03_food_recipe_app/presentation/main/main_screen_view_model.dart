import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/data/data_source/saved_recipe/mock_saved_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/home/home_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/notification/notification_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/profile/profile_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository_impl.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository_impl.dart';
import 'package:provider/provider.dart';

import '../../data/data_source/recipe/mock_recipe_data_source.dart';

class MainScreenViewModel with ChangeNotifier {
  MainScreenViewModel() {
    _screens = [
      HomeScreen(
        repository: RecipeRepositoryImpl(
          recipeDataSource: MockRecipeDataSource(),
        ),
      ),
      ChangeNotifierProvider(
        create: (context) => SavedRecipeViewModel(
            savedRecipeRepository: SavedRecipeRepositoryImpl(
                recipeDataSource: MockSavedRecipeDataSource())),
        child: const SavedRecipeScreen(),
      ),
      const NotificationScreen(),
      const ProfileScreen(),
    ];
  }

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  List<Widget> _screens = [];
  List<Widget> get screens => _screens;

  void selectedIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
