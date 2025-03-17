import 'package:flutter/material.dart';
import 'package:language_learining_app/component/component_item_home.dart';
import 'package:language_learining_app/screens/PhrasesPage.dart';
import 'package:language_learining_app/screens/colorPage.dart';
import 'package:language_learining_app/screens/family_members_page.dart';
import 'package:language_learining_app/screens/numbers_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFeF6db),
      appBar: AppBar(
        backgroundColor: Color(0xff47332C),
        title: Text(
          "Toku",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(children: [
        Category(
          message: "Numbers",
          color: Color(0xffF79B3A),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NumbersPage();
            }));
          },
        ),
        Category(
          message: "Family Members",
          color: Color(0xffACC997),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FamilyMembersPage();
            }));
          },
        ),
        Category(
          message: "Colors",
          color: Color(0xff854CAE),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ColorsPage();
            }));
          },
        ),
        Category(
          message: "Phrases",
          color: Color(0xff51B0D5),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return PhrasesPage();
                },
              ),
            );
          },
        ),
      ]),
    );
  }
}
