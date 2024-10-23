import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';

class SmallButton extends StatefulWidget {
  final String title;
  final void Function()? onTap;
  final ButtonStyle? style; // 추가된 부분

  const SmallButton({
    super.key,
    required this.onTap,
    required this.title,
    this.style, // 추가된 부분
  });

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          color: widget.style?.backgroundColor?.resolve({}) ?? ColorStyles.primary100,
          border: Border.all(
            color: widget.style?.side?.resolve({})?.color ?? Colors.white,
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyles.mediumTextBold.copyWith(
              color: widget.style?.foregroundColor?.resolve({}) ?? ColorStyles.white,
            ),
          ),
        ),
      ),
    );
  }
}