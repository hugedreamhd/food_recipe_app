import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';

import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'recipe_tags_${recipe.id}',
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(recipe.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black87],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20.0,
            top: 20.0,
            child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorStyles.secondary20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: ColorStyles.secondary80,
                    size: 15.0,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(style: TextStyles.smallTextRegular, '${recipe.rating}'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.foodTitle,
                    style: TextStyles.mediumTextBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    'By ${recipe.creator}',
                    style: TextStyles.smallerTextRegular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 70,
            top: 165,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'asset/images/timer.png',
                      height: 18,
                      width: 18,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      recipe.time,
                      style: TextStyles.smallTextRegular
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 30,
            top: 165,
            child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset(
                'asset/images/native_icon.png',
                height: 17,
                width: 17,
                color: ColorStyles.success,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
