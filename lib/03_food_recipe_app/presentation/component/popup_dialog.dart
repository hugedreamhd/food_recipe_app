import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';

class PopupDialog extends StatelessWidget {
  const PopupDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorStyles.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.close_sharp,
                  size: 10,
                ),
              ],
            ),
            Text('Recipe Link', style: TextStyles.largeTextBold),
            const SizedBox(
              height: 10,
            ),
            Text('Copy recipe link and share your recipe link with',
                style: TextStyles.smallerTextRegular),
            Text('friends and family', style: TextStyles.smallerTextRegular),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorStyles.gray4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'app.Recipe.co/jollof_rice',
                        style: TextStyles.smallTextBold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorStyles.primary100,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Copy Link',
                        style: TextStyles.smallerTextBold
                            .copyWith(color: ColorStyles.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
