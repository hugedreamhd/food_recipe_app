import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/creator_profile_item.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/ingredient_item.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/medium_button.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/recipe_card.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';
import 'package:provider/provider.dart';

class SavedRecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const SavedRecipeDetailScreen({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SavedRecipeDetailViewModel>();

    // 레시피가 아직 로드되지 않았다면 getRecipeById 호출
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (viewModel.recipe == null) {
        viewModel.getRecipeById(recipe.id);
      }
      viewModel.toggleButton(true);
    });

    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (viewModel.recipe == null) {
      return const Center(child: Text('레시피를 찾을 수 없습니다.'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.recipe?.foodTitle ?? "레시피 상세"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (viewModel.recipe != null)
                RecipeCard(
                  recipe: viewModel.recipe!,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(viewModel.recipe?.foodTitle ?? "레시피 상세"),
                  SizedBox(width: 10),
                  Text('(13k Reviews)'),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: CreatorProfileItem(
                  isFollowed: false,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MediumButton(
                    onTap: () {
                      context
                          .read<SavedRecipeDetailViewModel>()
                          .toggleButton(true);
                    },
                    title: 'Ingredient',
                    isSelected: context
                        .watch<SavedRecipeDetailViewModel>()
                        .isIngredientSelected,
                  ),
                  MediumButton(
                    onTap: () {
                      context
                          .read<SavedRecipeDetailViewModel>()
                          .toggleButton(false);
                    },
                    title: 'Procedure',
                    isSelected: !context
                        .watch<SavedRecipeDetailViewModel>()
                        .isIngredientSelected,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('1 Serve'),
                ],
              ),
              IngredientItem(ingredient: ingredient),
            ],
          ),
        ),
      ),
    );
  }
}
