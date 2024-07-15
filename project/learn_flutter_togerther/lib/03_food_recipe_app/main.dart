import 'package:flutter/material.dart';

import 'presentation/ui/home_screen.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const RecipeApp());
}
