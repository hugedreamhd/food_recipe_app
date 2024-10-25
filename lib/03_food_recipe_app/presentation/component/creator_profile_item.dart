import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/small_button.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   bool isFollowed = false;
//
//   void toggleFollow() {
//     setState(() {
//       isFollowed = !isFollowed;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Creator profile demo',
//         theme: ThemeData(
//           primaryColor: Colors.blue,
//         ),
//         home: CreatorProfileItem(
//             followOnTap: toggleFollow, isFollowed: isFollowed));
//   }
// }

class CreatorProfileItem extends StatelessWidget {
  final void Function()? followOnTap;
  final bool isFollowed;

  const CreatorProfileItem({
    super.key,
    this.followOnTap,
    required this.isFollowed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/05/20/14/23/baby-775503_1280.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Laura wilson'),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text('Lagos, Nigeria'),
                  ],
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(
                width: 20,
              ),
            ),
            SmallButton(
              title: isFollowed ? 'UnFollow' : 'Follow',
              onTap: followOnTap,
            ),
          ],
        ),
      ),
    );
  }
}
