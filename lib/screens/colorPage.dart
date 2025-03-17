import 'package:flutter/material.dart';
import 'package:language_learining_app/component/list_item.dart';
import 'package:language_learining_app/modles/ItemModel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> colorList = const [
    ItemModel(
      sound: "sounds/colors/black.wav",
      enName: "black",
      jpName: "jpName",
      image: "assets/images/color/color_black.png",
    ),
    ItemModel(
      sound: "sounds/colors/brown.wav",
      enName: "brwon",
      jpName: "jpName",
      image: "assets/images/color/color_brown.png",
    ),
    ItemModel(
      sound: "sounds/colors/dusty yellow.wav",
      enName: "dusty yellow",
      jpName: "jpName",
      image: "assets/images/color/color_dusty_yellow.png",
    ),
    ItemModel(
      sound: "sounds/colors/gray.wav",
      enName: "gray",
      jpName: "jpName",
      image: "assets/images/color/color_gray.png",
    ),
    ItemModel(
      sound: "sounds/colors/green.wav",
      enName: "green",
      jpName: "jpName",
      image: "assets/images/color/color_green.png",
    ),
    ItemModel(
      sound: "sounds/colors/red.wav",
      enName: "red",
      jpName: "jpName",
      image: "assets/images/color/color_red.png",
    ),
    ItemModel(
      sound: "sounds/colors/white.wav",
      enName: "white",
      jpName: "jpName",
      image: "assets/images/color/color_white.png",
    ),
    ItemModel(
      sound: "sounds/colors/yellow.wav",
      enName: "yellow",
      jpName: "jpName",
      image: "assets/images/color/yellow.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Color",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xff463126),
        ),
        body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return ListItem(
              itemModel: colorList[index],
              color: Color(0xff7D40A2),
            );
          },
        ),
      ),
    );
  }
}
