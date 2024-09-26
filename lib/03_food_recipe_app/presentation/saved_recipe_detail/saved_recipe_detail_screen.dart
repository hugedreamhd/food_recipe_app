import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
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
    // WidgetsBinding을 사용해 build 완료 후에 getRecipeById 호출
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (viewModel.recipe == null) {
        viewModel.getRecipeById(recipe.id);
      }
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
      body: SafeArea(
        child: Column(
          children: [
            if (viewModel.recipe != null) RecipeCard(recipe: viewModel.recipe!),
          ],
        ),
      ),
    );
  }
}
