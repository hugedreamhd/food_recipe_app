import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/home/saved_recipe_view.dart';
import '../../repository/recipe_repository.dart';

class HomeScreen extends StatefulWidget {
  final RecipeRepository repository;

  const HomeScreen({
    super.key,
    required this.repository,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysHide;

  final destinaion = [
    NavigationDestination(
      icon: Image.asset('asset/images/inactive_home.png'),
      selectedIcon: Image.asset(
        'asset/images/active_home.png',
      ),
      label: 'home',
    ),
    NavigationDestination(
      icon: Image.asset('asset/images/inactive_bookmark.png'),
      selectedIcon: Image.asset(
        'asset/images/active_bookmark.png',
      ),
      label: 'bookmark',
    ),
    NavigationDestination(
      icon: Image.asset('asset/images/inactive_notification.png'),
      selectedIcon: Image.asset(
        'asset/images/active_notification.png',
      ),
      label: 'notification',
    ),
    NavigationDestination(
      icon: Image.asset('asset/images/inactive_profile.png'),
      selectedIcon: Image.asset(
        'asset/images/active_profile.png',
      ),
      label: 'notification',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Center(
          child: InkWell(
            onTap: () => context.go('/'),
            child: Text('Home comming'),
          ),
        ),
        SavedRecipeView(repository: widget.repository),
        Center(
          child: Text('Notification'),
        ),
        Center(
          child: Text('Profile'),
        ),
      ][_currentPageIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        height: 60,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        labelBehavior: labelBehavior,
        selectedIndex: _currentPageIndex,
        destinations: destinaion,
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
    );
  }
}
