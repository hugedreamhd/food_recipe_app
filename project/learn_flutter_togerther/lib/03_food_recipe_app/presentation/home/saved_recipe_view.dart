import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/core/result.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/recipe_card.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/text_styles.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository.dart';

class SavedRecipeView extends StatelessWidget {
  final RecipeRepository repository;

  const SavedRecipeView({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
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
            child: FutureBuilder(
                future: repository.fetchRecipe(),
                builder: (BuildContext context,
                    AsyncSnapshot<Result<List<Recipe>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  final result = snapshot.data!;
                  switch (result) {
                    case Success<List<Recipe>>():
                      return ListView(
                        padding: EdgeInsets.zero,
                        children:
                        result.data.map((e) => RecipeCard(recipe: e)).toList(),
                      );
                    case Error<List<Recipe>>():
                      return Text(result.e);
                  }
                },),
          ),
        ],
      ),
    );
  }
}
