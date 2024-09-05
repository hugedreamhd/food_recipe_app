import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creator profile demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const CreatorProfileItem(),
    );
  }
}

class CreatorProfileItem extends StatelessWidget {
  const CreatorProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(

                      decoration: const BoxDecoration(

                        shape: BoxShape.circle,
                      ),
                      child: Image.network('https://cdn.pixabay.com/photo/2015/05/20/14/23/baby-775503_1280.jpg'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
