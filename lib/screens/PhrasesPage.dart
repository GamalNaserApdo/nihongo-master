import 'package:flutter/material.dart';
import 'package:language_learining_app/component/list_item.dart';
import 'package:language_learining_app/component/phraseItem.dart';
import 'package:language_learining_app/modles/ItemModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<PhrasesModel> phrases = const [
    PhrasesModel(
      sound: "sounds/phrases/are_you_coming.wav",
      phrase: "Kimasu ka",
    ),
    PhrasesModel(
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
      phrase: "Kōdoku o wasurenaide \nkudasai",
    ),
    PhrasesModel(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      phrase: "Go kibun wa ikagadesu ka",
    ),
    PhrasesModel(
      sound: "sounds/phrases/i_love_anime.wav",
      phrase: "are_youAnime daisuki_coming",
    ),
    PhrasesModel(
      sound: "sounds/phrases/i_love_programming.wav",
      phrase: "Puroguramingu ga \n daisukidesu.",
    ),
    PhrasesModel(
      sound: "sounds/phrases/programming_is_easy.wav",
      phrase: "Puroguramingu wa \nkantandesu.",
    ),
    PhrasesModel(
      sound: "sounds/phrases/what_is_your_name.wav",
      phrase: "Anata no namae wa \nnandesuka",
    ),
    PhrasesModel(
      sound: "sounds/phrases/where_are_you_going.wav",
      phrase: "Doko ni iku no",
    ),
    PhrasesModel(
      sound: "sounds/phrases/yes_im_coming.wav",
      phrase: "Hai, kimasu",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Phrases",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xff463126),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return PhraseItem(
                phrasesModel: phrases[index],
                color: Color(0xff4BADC4),
              );
            }),
      ),
    );
  }
}
