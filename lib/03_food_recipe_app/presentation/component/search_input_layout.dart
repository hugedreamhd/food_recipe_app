import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';
import 'package:go_router/go_router.dart';

class SearchInputLayout extends StatelessWidget {
  final String inputSearch;
  final bool isCursor;
  final TextEditingController textEditingController;
  final void Function(String)? onSubmitted;

  const SearchInputLayout({
    super.key,
    required this.inputSearch,
    this.isCursor = true,
    required this.textEditingController,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ColorStyles.gray4),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 16,
            width: 16,
            child: Image.asset('asset/images/search-normal.png'),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: AbsorbPointer(
              child: TextField(
                readOnly: true, // 전체 컨테이너에 onTap을 감지하기 위해 readOnly를 true로 설정
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Search recipe',
                  hintStyle: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.gray4,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}