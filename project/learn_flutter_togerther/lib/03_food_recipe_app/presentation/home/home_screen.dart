import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/02_material_design/presentation/ui/text_styles.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/core/result.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository_impl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required repository});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;

  final navi_destinaion = [
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
          child: Text('Home'),
        ),
        Center(
          child: Text('Bookmark'),
        ),
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
        destinations: navi_destinaion,
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
    );
  }
}
