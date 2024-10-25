import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';

class RateRecipe extends StatelessWidget {
  final void Function(int)? onTap; //몇번째 별이 클릭되었는지 전달하는 콜백
  final int rating; //현재 선택된 별의 개수
  final VoidCallback? onSend;

  // final bool isClicked = false;

  const RateRecipe({
    super.key,
    this.onTap,
    required this.rating,
    this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorStyles.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Rate Recipe',
              style: TextStyles.smallerTextBold,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < rating ? Icons.star : Icons.star_border_outlined,
                  ),
                  onPressed: () {
                    //선택된 별에서 -1 한값과 인덱스가 같으면 선택된 rating을 호출
                    if (index == rating - 1) {
                      onTap?.call(rating);
                    } else {
                      //선택된 별의 개수를 콜백으로 전달
                      onTap?.call(index + 1);
                    }
                  },
                  color: ColorStyles.secondary100,
                );
              }),
            ),
            const SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: onSend,
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorStyles.gray4,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Send',
                        style: TextStyles.smallerTextRegular
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
