import 'package:flutter/material.dart';

import '../../core/result.dart';
import '../../model/recipe.dart';
import '../../repository/recipe_repository.dart';
import '../component/recipe_card.dart';
import '../ui/text_styles.dart';

class SavedRecipeScreen extends StatelessWidget {
  final RecipeRepository repository;

  const SavedRecipeScreen({
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
                      children: result.data
                          .map((e) => RecipeCard(recipe: e))
                          .toList(),
                    );
                  case Error<List<Recipe>>():
                    return Text(result.e);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
