import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';

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
        padding: const EdgeInsets.all(24.0),
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
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Search',
                style: TextStyles.mediumTextBold,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
