import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/creator_profile_item.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/ingredient_item.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/medium_button.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/recipe_card.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
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
        actions: [
          PopupMenuButton(
            constraints: BoxConstraints(minWidth: 60, maxWidth: 150),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            popUpAnimationStyle: AnimationStyle(
              curve: Easing.emphasizedDecelerate,
              duration: const Duration(seconds: 2),
            ),
            icon: const Icon(Icons.more_vert),
            iconSize: 30,
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  onTap: () {},
                  //탭했을 때 호출
                  child: ListTile(
                    leading: Image.asset(
                      'asset/images/share.png',
                    ),
                    title: const Text('Share'),
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  //탭했을 때 호출
                  child: ListTile(
                    leading: Image.asset(
                      'asset/images/star.png',
                    ),
                    title: Text('Rate Recipe'),
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  //탭했을 때 호출
                  child: ListTile(
                    leading: Image.asset(
                      'asset/images/message.png',
                    ),
                    title: const Text('Review'),
                  ),
                ),
                PopupMenuItem(
                  onTap: () {},
                  //탭했을 때 호출
                  child: ListTile(
                    leading: Image.asset(
                      'asset/images/active_black.png',
                      // width: 20,
                      // height: 20,
                    ),
                    title: const Text('Unsaved'),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                  const SizedBox(width: 10),
                  const Text('(13k Reviews)'),
                ],
              ),
              const SizedBox(height: 20),
              const SizedBox(
                  height: 100,
                  child: CreatorProfileItem(
                    isFollowed: false,
                  )),
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
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('1 Serve'),
              ),
              Column(
                children: viewModel.recipeIngredients
                    .map(
                      (recipeIngredient) => IngredientItem(
                        ingredient: recipeIngredient.ingredient,
                        amount: recipeIngredient.amount,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
