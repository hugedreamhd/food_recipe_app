import 'package:flutter/material.dart';

class SnsLoginItems extends StatelessWidget {
  const SnsLoginItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: Image.asset(
              'asset/images/googleIconButton.png',
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 70,
            height: 70,
            child: Image.asset(
              'asset/images/faceBookIconButton.png',
            ),
          ),
        ],
      ),
    );
  }
}
