import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/ingredient.dart';

class IngredientItem extends StatelessWidget {
  final Ingredient ingredient;
  final num amount;

  const IngredientItem({
    super.key,
    required this.ingredient,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[350],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      ingredient.imageUrl,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ingredient.name,
                  ),
                  const Spacer(),
                  Text(
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black26),
                    '$amount g',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// final ingredient = const Ingredient(
//   name: 'Apple',
//   imageUrl:
//   'https://media.istockphoto.com/id/184276818/ko/%EC%82%AC%EC%A7%84/%EB%A0%88%EB%93%9C-%EC%82%AC%EA%B3%BC%EB%82%98%EB%AC%B4.jpg?s=2048x2048&w=is&k=20&c=ha7OqiGpi8QruIPKcU6rix1-KN_fm210KTHjTFRb4Xk=',
//   weight: '500g',
// );
