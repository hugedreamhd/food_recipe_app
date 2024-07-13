import '../model/recipe.dart';

abstract interface class FoodRepository {
  Future<List<Recipe>> fetchFood();
}