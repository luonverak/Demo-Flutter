import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> listImage = [
    'asset/image/apple.webp',
    'asset/image/burger.webp',
    'asset/image/banana.jpg',
    'asset/image/spaicaty.jpg',
    'asset/image/checken.png',
    'asset/image/coca.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Menu'),
      ),
      body: GridView.count(
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          listImage.length,
          (index) => SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              listImage[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
