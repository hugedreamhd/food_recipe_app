import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/text_styles.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'recipe_tags',
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
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black87],
                ),
              ),
            ),
          ),
          Positioned(
            left: 335.0,
            right: 20.0,
            top: 20.0,
            bottom: 170,
            child: Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorStyles.primary20,
              ),
            ),
          ),
          Positioned(
            left: 335.0,
            right: 20.0,
            top: 20.0,
            bottom: 170,
            child: Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorStyles.secondary40,
              ),
              child: SizedBox(
                height: 20,
                width: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorStyles.secondary80,
                      size: 15.0,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('${recipe.rating}'),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            width: 230,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.foodTitle,
                    style:
                        TextStyles.mediumTextBold.copyWith(color: Colors.white),
                  ),
                  Text(
                    'By ${recipe.creator}',
                    style: TextStyles.smallerTextRegular.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
