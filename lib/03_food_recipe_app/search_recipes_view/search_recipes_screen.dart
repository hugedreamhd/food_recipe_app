import 'package:flutter/material.dart';

import '../presentation/component/filtering_icon.dart';
import '../presentation/component/search_input_layout.dart';

class SearchRecipesScreen extends StatelessWidget {
  const SearchRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search recipes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SearchInputLayout(
                    inputSearch: 'Search Recipe',
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                FilteringIcon(),
              ],
            ),
            Center(
              child: Text('searchRecipes'),
            ),
          ],
        ),
      ),
    );
  }
}
