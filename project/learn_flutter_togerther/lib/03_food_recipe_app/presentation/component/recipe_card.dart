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
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black87],
                ),
              ),
            ),
          ),
          Positioned(
            left: 290.0,
            right: 20.0,
            top: 20.0,
            bottom: 170,
            child: Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorStyles.secondary20,
              ),
              child: SizedBox(
                height: 20,
                width: 30,
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
                    Text(
                        style: TextStyles.smallTextRegular, '${recipe.rating}'),
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
          Positioned(
            right: 50,
            bottom: 20,
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
            right: 25,
            bottom: 20,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        'asset/images/nactive_icon.png',
                        height: 17,
                        width: 17,
                        color: ColorStyles.success,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
