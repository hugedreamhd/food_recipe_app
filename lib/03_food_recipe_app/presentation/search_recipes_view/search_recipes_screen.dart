import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/recipe_card.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/components/search_result_image.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_view.dart';

import '../component/filtering_icon.dart';
import '../component/search_input_layout.dart';
import '../ui/text_styles.dart';

class SearchRecipesScreen extends StatefulWidget {
  final SearchRecipesView viewModel;

  const SearchRecipesScreen({
    super.key,
    required this.viewModel,
  });

  @override
  State<SearchRecipesScreen> createState() => _SearchRecipesScreenState();
}

class _SearchRecipesScreenState extends State<SearchRecipesScreen> {
  late final Recipe recipe;
  final textEdtingController = TextEditingController();

  @override
  void initState() {
    widget.viewModel.fetchRecipe();
    super.initState();
  }

  @override
  void dispose() {
    textEdtingController.dispose();
    super.dispose();
  }

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
                      textEditingController: textEdtingController,
                      onSubmitted: (query) {
                        widget.viewModel.search(query);
                      }),
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
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListenableBuilder(
                listenable: widget.viewModel,
                builder: (BuildContext context, Widget? child) {
                  if (widget.viewModel.isLoading) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (widget.viewModel.recipe.isEmpty) {
                    return Center(child: Text('No recipe found'));
                  }
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 24,
                    ),
                    itemCount: widget.viewModel.recipe.length,
                    itemBuilder: (context, index) {
                      final recipe = widget.viewModel.recipe[index];

                      return SearchResultImage(recipe: recipe);
                      // return GestureDetector(
                      //   child: Column(
                      //     children: [
                      //       Expanded(child: RecipeCard(recipe: recipe)),
                      //       Image.network(
                      //         recipe.imagePath,
                      //         fit: BoxFit.cover,
                      //         height: 150,
                      //         width: 150,
                      //       ),
                      //       Text(recipe.foodTitle),
                      //       Text(recipe.creator),
                      //     ],
                      //   ),
                      // );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
