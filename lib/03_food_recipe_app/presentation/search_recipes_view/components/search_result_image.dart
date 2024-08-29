import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';

class SearchResultImage extends StatelessWidget {
  final Recipe recipe;

  const SearchResultImage({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(recipe.imagePath), fit: BoxFit.cover)),
          ),
        ),
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black87],
                )),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 10,
          child: Column(
            children: [
              SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    recipe.foodTitle,
                    style: TextStyles.smallerTextBold
                        .copyWith(color: ColorStyles.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Column(
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  'By ${recipe.creator}',
                  style: TextStyles.smallerTextRegular
                      .copyWith(color: ColorStyles.white),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10.0,
          top: 10,
          child: Container(
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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
                Text(
                  style: TextStyles.smallerTextRegular,
                  '${recipe.rating}',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
