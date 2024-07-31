import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

class SearchInputLayout extends StatelessWidget {
  final String inputSearch;
  final bool isCursor;

  const SearchInputLayout({
    super.key,
    required this.inputSearch,
    this.isCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                context.push('/search_recipes');
              },
              child: Container(
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
                      child: TextField(
                        readOnly: isCursor,
                        decoration: InputDecoration(
                          hintText: inputSearch,
                          hintStyle: TextStyles.smallerTextRegular.copyWith(
                            color: ColorStyles.gray4,
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
