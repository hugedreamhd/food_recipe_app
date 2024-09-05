import 'package:flutter/material.dart';

import '../ui/color_styles.dart';

class FilteringIcon extends StatelessWidget {
  const FilteringIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorStyles.primary100,
      ),
      child: Image.asset('asset/images/setting_icon.png'),
    );
  }
}
