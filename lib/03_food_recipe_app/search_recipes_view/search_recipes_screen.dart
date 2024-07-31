import 'package:flutter/material.dart';

class SearchRecipesScreen extends StatelessWidget {
  const SearchRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search recipes'),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Center(
            child: Text('searchRecipes'),
          ),
        ],
      ),
    );
  }
}
