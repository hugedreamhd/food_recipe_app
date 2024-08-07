import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../model/recipe.dart';

class SavedRecipeDetailScreen extends StatefulWidget {
  final Recipe recipe;

  const SavedRecipeDetailScreen({
    super.key,
    required this.recipe,
  });

  @override
  State<SavedRecipeDetailScreen> createState() => _SavedRecipeDetailScreenState();
}

class _SavedRecipeDetailScreenState extends State<SavedRecipeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 54.0,
                left: 20.0,
                right: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => context.pop(),
                    icon: const Icon(Icons.arrow_back),
                    padding: EdgeInsets.zero,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                    padding: EdgeInsets.zero,
                  )
                ],
              ),
            ),
            //RecipePicture(recipe: widget.recipe),
          ],
        ));
  }
}
