import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/filtering_icon.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/input_text.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/search_input_layout.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Hello Jega',
                style: TextStyles.largeTextBold,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'What are you cooking today?',
                style: TextStyles.smallTextRegular.copyWith(
                  color: ColorStyles.gray4,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: SearchInputLayout(
                      inputSearch: 'Search recipe',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FilteringIcon(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
