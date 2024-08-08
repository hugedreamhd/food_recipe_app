import 'package:flutter/material.dart';

import '../../model/recipe.dart';

class SavedRecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const SavedRecipeDetailScreen({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: recipe.imagePath,
        child: Column(
          children: [
            Card(
              color: Colors.black,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Stack(
                  children: [
                    Image.network(
                      recipe.imagePath,
                      width: double.infinity,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 54.0,
            //     left: 20.0,
            //     right: 24.0,
            //   ),
            //   child: SingleChildScrollView(
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         IconButton(
            //           onPressed: () => context.pop(),
            //           icon: const Icon(Icons.arrow_back),
            //           padding: EdgeInsets.zero,
            //         ),
            //         IconButton(
            //           onPressed: () {},
            //           icon: const Icon(Icons.more_horiz),
            //           padding: EdgeInsets.zero,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            //RecipePicture(recipe: widget.recipe),
          ],
        ),
      ),
    );
  }
}
