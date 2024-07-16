import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/color_styles.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorStyles.primary100,
            ),
          ),
        ),
        Positioned(
          left: 335.0,
          right: 20.0,
          top: 20.0,
          bottom: 170,
          child: Container(
            height: 10,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorStyles.primary20,
            ),
            child: SizedBox(
              height: 20,
              width: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: ColorStyles.secondary80,
                    size: 15.0,
                  ),
                  SizedBox(width: 5,),
                  Text('4.0'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: RecipeCard(),
          ),
        ),
      ),
    ),
  );
}
