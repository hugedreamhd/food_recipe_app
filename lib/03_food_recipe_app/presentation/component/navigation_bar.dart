import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({
    super.key,
    required List destinations,
  });

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
            icon: Image.asset('asset/images/active_home.png'),
            label: 'Home')
      ],
    );
  }
}
