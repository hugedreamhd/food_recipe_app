import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/color_styles.dart';

class FilteringIcon extends StatelessWidget {
  const FilteringIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: Image.asset('asset/images/setting_icon.png'),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorStyles.primary100,
      ),
    );
  }
}
