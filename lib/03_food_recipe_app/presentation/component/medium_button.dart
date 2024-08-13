import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';

class MediumButton extends StatefulWidget {
  final String title;
  final void Function()? onTap;

  const MediumButton({super.key, required this.onTap, required this.title});

  @override
  State<MediumButton> createState() => _MediumButtonState();
}

class _MediumButtonState extends State<MediumButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: widget.onTap,
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
          widget.onTap?.call();
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: _isPressed ? ColorStyles.gray4 : ColorStyles.primary100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                widget.title,
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
