import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_view_model.dart';
import 'package:go_router/go_router.dart';
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
                : ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: viewModel.recipes.length,
                    itemBuilder: (context, index) {
                      final recipe = viewModel.recipes[index];
                      return GestureDetector(
                        onTap: () {
                          context.push(
                            '/saved_recipe_detail',
                            extra: recipe,
                          );
                        },
                        child: RecipeCard(recipe: recipe),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
