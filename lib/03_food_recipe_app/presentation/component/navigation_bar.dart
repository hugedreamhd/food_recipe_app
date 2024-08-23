import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected, required this.labelBehavior,
  });

  final int selectedIndex;
  final NavigationDestinationLabelBehavior labelBehavior;
  final ValueChanged<int> onDestinationSelected;


  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.transparent,
      labelBehavior: labelBehavior,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      animationDuration: Duration(milliseconds: 1000),
      destinations: [
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_home.png'),
            selectedIcon: Image.asset(
              'asset/images/active_home.png', color: ColorStyles.primary100,),
            label: 'Home'),
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_bookmark.png'),
            selectedIcon: Image.asset('asset/images/active_bookmark.png',
              color: ColorStyles.primary100,),
            label: 'Bookmark'),
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_notification.png'),
            selectedIcon: Image.asset('asset/images/active_notification.png',
              color: ColorStyles.primary100,),
            label: 'Notification'),
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_profile.png'),
            selectedIcon: Image.asset('asset/images/active_profile.png',
              color: ColorStyles.primary100,),
            label: 'Profile'),
      ],
    );
  }
}