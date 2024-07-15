import 'package:learn_flutter_togerther/03_food_recipe_app/core/result.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  @override
  Future<Result<List<Recipe>, RecipeRepositoryError>> fetchRecipe() async {
    final List<Recipe> recipes =[
      Recipe(
        foodTitle: 'Traditional spare ribs baked',
        creator: 'By Chef John',
        time: 20,
        rating: 4.0,
        imagePath:
            'https://s3-alpha-sig.figma.com/img/2234/134e/6e53ef9148ab9085bbd1369e270f0bba?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WvmODdewmuqyvaoW6smiu71~z7wemAUUHfSRIdzVffzbPFGK36dRxrIBPnxgx8A~WYdpRx1t9QhbL-9wTJJD~l0TSge5mUABr07Ly0B~Qr30LMN2XW2yIbuH6oDgk3-BDY3D0JKlvfJC4~XzxKf4y399b~M0la-1mMnm5Yn1bHFE6CPjRrV8-HeDhnA4jSX5b13XrFT7OGj3nw3mtKtpAfsYDRyPDdEZwSpCCOEs6BVpjl3R5VzinWhwCBDEFBKIVmHlJfhxzYROHVcR9FKqxY8SOiV2AxI~SwkXXILtO7kRWKxhM2ioRdFkgHde7LmfrS8C-DgZ2PDTrr5RsL~3dQ__',
      ),
    ];
    return Result.success(recipes);
  }

}
