import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/02_material_design/presentation/ui/text_styles.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/core/result.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/model/recipe.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/repository/recipe_repository_impl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  //RecipeRepository 타입의 _repository 변수가 RecipeRepositoryImpl 인스턴스를 참조
  final RecipeRepository _repository = RecipeRepositoryImpl();

  Future<Result<List<Recipe>, RecipeRepositoryError>> _fetchRecipe() {
    return _repository.fetchRecipe();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Saved Recipe',
              style: TextStyles.mediumTextBold,
            ),
            // ListView.builder(
            //   itemCount: 4,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       child: Column(
            //         children: [
            //           Expanded(
            //             child: Image.network(
            //               'https://s3-alpha-sig.figma.com/img/2234/134e/6e53ef9148ab9085bbd1369e270f0bba?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WvmODdewmuqyvaoW6smiu71~z7wemAUUHfSRIdzVffzbPFGK36dRxrIBPnxgx8A~WYdpRx1t9QhbL-9wTJJD~l0TSge5mUABr07Ly0B~Qr30LMN2XW2yIbuH6oDgk3-BDY3D0JKlvfJC4~XzxKf4y399b~M0la-1mMnm5Yn1bHFE6CPjRrV8-HeDhnA4jSX5b13XrFT7OGj3nw3mtKtpAfsYDRyPDdEZwSpCCOEs6BVpjl3R5VzinWhwCBDEFBKIVmHlJfhxzYROHVcR9FKqxY8SOiV2AxI~SwkXXILtO7kRWKxhM2ioRdFkgHde7LmfrS8C-DgZ2PDTrr5RsL~3dQ__',
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
