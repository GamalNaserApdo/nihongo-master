import 'package:flutter/material.dart';
import 'package:language_learining_app/component/list_item.dart';
import 'package:language_learining_app/modles/ItemModel.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});

  final List<ItemModel> members = const [
    ItemModel(
      image: "assets/images/family_members/family_father.png",
      jpName: "Chichioya",
      enName: "Father",
      sound: "sounds/family_members/father.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "sofu ",
      enName: "Grand Father",
      sound: "sounds/family_members/grand father.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_daughter.png",
      jpName: "Musume ",
      enName: "Daughter",
      sound: "sounds/family_members/daughter.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_mother.png",
      jpName: "Hahaoya ",
      enName: "Mother",
      sound: "sounds/family_members/mother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "sobo",
      enName: "Grand Mother",
      sound: "sounds/family_members/grand mother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "Nisan ",
      enName: "Older Brother",
      sound: "sounds/family_members/older brother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "Ani",
      enName: "Older Sister",
      sound: "sounds/family_members/older sister.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_son.png",
      jpName: "Musuko ",
      enName: "Son",
      sound: "sounds/family_members/son.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "Otōto ",
      enName: "Younger Brother",
      sound: "sounds/family_members/younger brother.wav",
    ),
    ItemModel(
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "Imōto ",
      enName: "Younger Sister",
      sound: "sounds/family_members/younger sister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Family Member",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xff463126),
        ),
        body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return ListItem(
              itemModel: members[index],
              color: Color(0xff558C39),
            );
          },
        ),
      ),
    );
  }
}
