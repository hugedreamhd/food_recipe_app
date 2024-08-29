import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/navigation_bar.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/home/home_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/notification/notification_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/profile/profile_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_screen.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository.dart';
import 'package:food_recipe_app/03_food_recipe_app/repository/recipe_repository_impl.dart';

class MainScreen extends StatefulWidget {
  // final RecipeRepository recipeRepository;
  final RecipeRepositoryImpl recipeRepository;

  const MainScreen(
      {super.key,
      required this.recipeRepository,
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
        repository: widget.recipeRepository,
      ),
      SavedRecipeScreen(repository: widget.recipeRepository),
      NotificationScreen(),
      ProfileScreen(),
    ];

    // void changeScreen(int index) {
    //   setState(() {
    //     _currentIndex = index;
    //   });
    // }

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
