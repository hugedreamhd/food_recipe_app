import 'package:flutter/material.dart';

import 'core/routes.dart';

void main() {
  runApp(
    const RecipeApp(),
  );
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}