import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';

class MockRecipeDataSource implements RecipeDataSource {
  @override
  Future<List<Recipe>> getRecipes() async {
    return _recipes;
  }
}

final List<Recipe> _recipes = [
  const Recipe(
    foodTitle: 'Traditional spare ribs baked',
    creator: 'By Chef John',
    time: '20 min',
    rating: 4.0,
    imagePath:
        'https://cdn.pixabay.com/photo/2022/08/25/17/42/spare-ribs-7410914_1280.jpg', id: '4',
  ),
  const Recipe(
    foodTitle: 'spice roasted chicken with flavored rice',
    imagePath:
        'https://cdn.pixabay.com/photo/2022/06/07/21/00/chicken-7249273_1280.jpg',
    creator: 'Mark Kelvin',
    time: '20 min',
    rating: 4.0, id: '3',
  ),
  const Recipe(
    foodTitle: 'Spicy fried rice mix chicken bali',
    imagePath:
        'https://cdn.pixabay.com/photo/2021/01/16/09/05/meal-5921491_1280.jpg',
    creator: 'Spicy Nelly',
    time: '20 min',
    rating: 4.0, id: '2',
  ),
  const Recipe(
    foodTitle: 'Lamb chops with fruity',
    imagePath:
        'https://cdn.pixabay.com/photo/2018/08/29/19/03/steak-3640560_1280.jpg',
    creator: 'elden shadler',
    time: '30 min',
    rating: 5.0, id: '1',
  )
];
