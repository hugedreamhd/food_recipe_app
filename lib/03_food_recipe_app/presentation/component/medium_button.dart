import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';

class MediumButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isSelected;

  const MediumButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? ColorStyles.primary100 : ColorStyles.gray4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                title,
                style: TextStyles.mediumTextBold.copyWith(
                  color: ColorStyles.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
