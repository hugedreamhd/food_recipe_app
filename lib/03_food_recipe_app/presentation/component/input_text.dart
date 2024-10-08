import 'package:flutter/material.dart';

import '../ui/color_styles.dart';
import '../ui/text_styles.dart';
class InputTextField extends StatefulWidget {
  //data
  final String inputTitle;
  final String hintText;

  const InputTextField({
    super.key,
    required this.inputTitle,
    required this.hintText,
  });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.inputTitle,
          style: TextStyles.smallTextRegular,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyles.smallerTextRegular.copyWith(
              color: ColorStyles.gray4,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
