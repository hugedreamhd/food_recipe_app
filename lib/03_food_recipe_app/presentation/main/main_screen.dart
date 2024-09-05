import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/main/main_screen_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //글자를 항상 보이지 않게 하는것
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysHide;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainScreenViewModel>();

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        animationDuration: const Duration(milliseconds: 1000),
        onDestinationSelected: (int index) {
          viewModel.selectedIndex(index);
        },
        selectedIndex: viewModel.currentIndex,
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
        child: viewModel.screens[viewModel.currentIndex],
      ),
    );
  }
}
