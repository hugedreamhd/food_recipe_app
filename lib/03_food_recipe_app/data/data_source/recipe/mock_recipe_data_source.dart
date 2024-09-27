import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/recipe_data_source.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/ingredient.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe_ingredient.dart';

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
        'https://cdn.pixabay.com/photo/2022/08/25/17/42/spare-ribs-7410914_1280.jpg',
    id: '4',
    ingredients: [
      RecipeIngredient(
        ingredient: Ingredient(
          id: 3,
          name: 'Pork',
          imageUrl:
              'https://cdn.pixabay.com/photo/2019/12/20/14/44/meat-4708596_1280.jpg',
        ),
        amount: 500,
      ),
      RecipeIngredient(
        ingredient: Ingredient(
          id: 9,
          name: 'Onion',
          imageUrl:
              'https://cdn.pixabay.com/photo/2013/02/21/19/14/onion-bulbs-84722_1280.jpg',
        ),
        amount: 50,
      ),
      RecipeIngredient(
        ingredient: Ingredient(
          id: 8,
          name: 'Pepper',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/03/05/22/31/pepper-1239308_1280.jpg',
        ),
        amount: 10,
      ),
    ],
  ),
  const Recipe(
    foodTitle: 'spice roasted chicken with flavored rice',
    imagePath:
        'https://cdn.pixabay.com/photo/2022/06/07/21/00/chicken-7249273_1280.jpg',
    creator: 'Mark Kelvin',
    time: '20 min',
    rating: 4.0,
    id: '3',
    ingredients: [
      RecipeIngredient(
        ingredient: Ingredient(
          id: 6,
          name: 'Chicken',
          imageUrl:
              'https://cdn.pixabay.com/photo/2010/12/10/08/chicken-1140_1280.jpg',
        ),
        amount: 300,
      ),
      RecipeIngredient(
        ingredient: Ingredient(
          id: 4,
          name: 'Rice',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/02/29/05/46/brown-rice-1228099_1280.jpg',
        ),
        amount: 200,
      ),
      RecipeIngredient(
        ingredient: Ingredient(
          id: 8,
          name: 'Pepper',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/03/05/22/31/pepper-1239308_1280.jpg',
        ),
        amount: 5,
      ),
    ],
  ),
  const Recipe(
    foodTitle: 'Spicy fried rice mix chicken bali',
    imagePath:
        'https://cdn.pixabay.com/photo/2021/01/16/09/05/meal-5921491_1280.jpg',
    creator: 'Spicy Nelly',
    time: '20 min',
    rating: 4.0,
    id: '2',
    ingredients: [
      RecipeIngredient(
        ingredient: Ingredient(
          id: 6,
          name: 'Chicken',
          imageUrl:
              'https://cdn.pixabay.com/photo/2010/12/10/08/chicken-1140_1280.jpg',
        ),
        amount: 200,
      ),
      RecipeIngredient(
        ingredient: Ingredient(
          id: 4,
          name: 'Rice',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/02/29/05/46/brown-rice-1228099_1280.jpg',
        ),
        amount: 150,
      ),
      RecipeIngredient(
        ingredient: Ingredient(
          id: 1,
          name: 'Tomato',
          imageUrl:
              'https://cdn.pixabay.com/photo/2017/10/06/17/17/tomato-2823826_1280.jpg',
        ),
        amount: 100,
      ),
    ],
  ),
  const Recipe(
    foodTitle: 'Lamb chops with fruity',
    imagePath:
        'https://cdn.pixabay.com/photo/2018/08/29/19/03/steak-3640560_1280.jpg',
    creator: 'elden shadler',
    time: '30 min',
    rating: 5.0,
    id: '1',
    ingredients: [
      RecipeIngredient(
        ingredient: Ingredient(
          id: 5,
          name: 'Avocado',
          imageUrl:
              'https://cdn.pixabay.com/photo/2020/01/02/01/43/avocado-4734786_1280.jpg',
        ),
        amount: 150,
      ),
      RecipeIngredient(
        ingredient: Ingredient(
          id: 8,
          name: 'Pepper',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/03/05/22/31/pepper-1239308_1280.jpg',
        ),
        amount: 5,
      ),
    ],
  ),
];
