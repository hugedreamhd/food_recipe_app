import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/components/search_result_image.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/search_recipes_view/search_recipes_view_model.dart';
import 'package:provider/provider.dart';

import '../component/filtering_icon.dart';
import '../component/search_input_layout.dart';
import '../ui/text_styles.dart';

class SearchRecipesScreen extends StatefulWidget {
  const SearchRecipesScreen({
    super.key,
  });

  @override
  State<SearchRecipesScreen> createState() => _SearchRecipesScreenState();
}

class _SearchRecipesScreenState extends State<SearchRecipesScreen> {
  final textEdtingController = TextEditingController();

  @override
  void dispose() {
    textEdtingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchRecipesViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search recipes'),
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
                      // isCursor: false,
                      inputSearch: 'Search Recipe',
                      textEditingController: textEdtingController,
                      onChanged: (query) {
                        viewModel.search(query);
                      }),
                ),
                const SizedBox(
                  width: 16,
                ),
                const FilteringIcon(),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Search',
                style: TextStyles.mediumTextBold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: (viewModel.state.isLoading)
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : (viewModel.state.recipe.isEmpty)
                      ? const Center(child: Text('No recipe found'))
                      : GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 24,
                          ),
                          itemCount: viewModel.state.recipe.length,
                          itemBuilder: (context, index) {
                            final recipe = viewModel.state.recipe[index];
                            return SearchResultImage(recipe: recipe);
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
