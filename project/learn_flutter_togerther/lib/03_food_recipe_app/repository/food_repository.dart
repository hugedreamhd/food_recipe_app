abstract interface class FoodRepository {
  Future<List<Food>> fetchFood();
}