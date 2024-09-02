import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/mock_recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/home/home_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/notification/notification_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/profile/profile_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository_impl.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/saved_recipe_repository.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  final SavedRecipeRepository savedRecipeRepository;
  final RecipeRepository recipeRepository;

  const MainScreen({
    super.key,
    required this.recipeRepository,
    required this.savedRecipeRepository,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //글자를 항상 보이지 않게 하는것
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysHide;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(
        repository: RecipeRepositoryImpl(
          recipeDataSource: MockRecipeDataSource(),
        ),
      ),
      ChangeNotifierProvider(
        create: (context) => SavedRecipeViewModel(
            recipeRepository: widget.savedRecipeRepository),
        child: const SavedRecipeScreen(),
      ),
      NotificationScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        animationDuration: Duration(milliseconds: 1000),
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedIndex: _currentIndex,
        destinations: [
          NavigationDestination(
              icon: Image.asset('asset/images/inactive_home.png'),
              selectedIcon: Image.asset(
                'asset/images/active_home.png',
                color: ColorStyles.primary100,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Image.asset('asset/images/inactive_bookmark.png'),
              selectedIcon: Image.asset(
                'asset/images/active_bookmark.png',
                color: ColorStyles.primary100,
              ),
              label: 'Bookmark'),
          NavigationDestination(
              icon: Image.asset('asset/images/inactive_notification.png'),
              selectedIcon: Image.asset(
                'asset/images/active_notification.png',
                color: ColorStyles.primary100,
              ),
              label: 'Notification'),
          NavigationDestination(
              icon: Image.asset('asset/images/inactive_profile.png'),
              selectedIcon: Image.asset(
                'asset/images/active_profile.png',
                color: ColorStyles.primary100,
              ),
              label: 'Profile'),
        ],
      ),
      body: SafeArea(
        child: screens[_currentIndex],
      ),
    );
  }
}
