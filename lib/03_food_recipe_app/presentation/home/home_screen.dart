import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/navigation_bar.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/rate_recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/saved_recipe/saved_recipe_screen.dart';

import '../../repository/recipe_repository_impl.dart';
import '../component/filtering_icon.dart';
import '../component/search_input_layout.dart';
import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required RecipeRepositoryImpl repository,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Hello Jega',
                style: TextStyles.largeTextBold,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'What are you cooking today?',
                style: TextStyles.smallTextRegular.copyWith(
                  color: ColorStyles.gray4,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: SearchInputLayout(
                      inputSearch: '',
                      textEditingController: textEditingController,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const FilteringIcon(),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
