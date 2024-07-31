import 'package:flutter/material.dart';

import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

class SearchInputLayout extends StatefulWidget {
  final String inputSearch;

  const SearchInputLayout({
    super.key,
    required this.inputSearch,
  });

  @override
  State<SearchInputLayout> createState() => _SearchInputLayoutState();
}

class _SearchInputLayoutState extends State<SearchInputLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
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
                    decoration: InputDecoration(
                      hintText: widget.inputSearch,
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
      ],
    );
  }
}
