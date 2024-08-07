import 'package:flutter/material.dart';

import '../../repository/recipe_repository_impl.dart';
import '../component/filtering_icon.dart';
import '../component/search_input_layout.dart';
import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required RecipeRepositoryImpl repository});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const Row(
                children: [
                  Expanded(
                    child: SearchInputLayout(
                      inputSearch: '',

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
