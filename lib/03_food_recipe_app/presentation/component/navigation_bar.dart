import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: [
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_home.png'),
            selectedIcon: Image.asset('asset/images/active_home.png'),
            label: 'Home'),
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_bookmark.png'),
            selectedIcon: Image.asset('asset/images/active_bookmark.png'),
            label: 'Bookmark'),
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_notification.png'),
            selectedIcon: Image.asset('asset/images/active_notification.png'),
            label: 'Notification'),
        NavigationDestination(
            icon: Image.asset('asset/images/inactive_profile.png'),
            selectedIcon: Image.asset('asset/images/active_profile.png'),
            label: 'Profile'),
      ],
    );
  }
}