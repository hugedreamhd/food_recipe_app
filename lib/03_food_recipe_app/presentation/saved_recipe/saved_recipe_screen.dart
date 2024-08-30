import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_view_model.dart';
import 'package:provider/provider.dart';

import '../component/recipe_card.dart';
import '../ui/text_styles.dart';

class SavedRecipeScreen extends StatelessWidget {


  const SavedRecipeScreen({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SavedRecipeViewModel>();
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Saved recipes',
                style: TextStyles.mediumTextBold,
              ),
            ),
          ),
          Expanded(
            child: viewModel.isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView(
                    padding: EdgeInsets.zero,
                    children: viewModel.recipes
                        .map((e) => RecipeCard(recipe: e))
                        .toList(),
                  ),
          ),
        ],
      ),
    );
  }
}
