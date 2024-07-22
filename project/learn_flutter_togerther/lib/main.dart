// import 'package:flutter/material.dart';
// import 'package:learn_flutter_togerther/03_food_recipe_app/core/routes.dart';
// import 'package:learn_flutter_togerther/03_food_recipe_app/data/mock_recipe_data_source.dart';
// import 'package:learn_flutter_togerther/03_food_recipe_app/main.dart';
// import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/home/home_screen.dart';
// import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository_impl.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     final recipeDataSource = MockRecipeDataSource();
//     final repository = RecipeRepositoryImpl(
//       recipeDataSource: recipeDataSource,
//     );
//
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//         ),
//         useMaterial3: true,
//       ),
//       home: RecipeApp(
//         repository: repository,
//       ),
//     );
//   }
// }
