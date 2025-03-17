import 'package:flutter/material.dart';
import 'package:language_learining_app/component/list_item.dart';
import 'package:language_learining_app/modles/ItemModel.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

// 5las pdl ma3mel le kol wa7da object  la2 ana 73mel list of object ta7t ahw

  // Number one = Number(
  //   EnName: "one",
  //   JpName: "ichi",
  //   image: "assets/images/numbers/number_one.png",
  // );
  // Number two = Number(
  //   EnName: "two",
  //   JpName: "sad",
  //   image: "assets/images/numbers/number_two.png",
  // );

  final List<ItemModel> numbers = const [
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_one_sound.mp3",
      enName: "One",
      jpName: "Ichi",
      image: "assets/images/numbers/number_one.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_two_sound.mp3",
      enName: "Two",
      jpName: "Ni",
      image: "assets/images/numbers/number_two.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_three_sound.mp3",
      enName: "Three",
      jpName: "San",
      image: "assets/images/numbers/number_three.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_four_sound.mp3",
      enName: "Four",
      jpName: "Shi",
      image: "assets/images/numbers/number_four.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_five_sound.mp3",
      enName: "Five",
      jpName: "Go",
      image: "assets/images/numbers/number_five.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_six_sound.mp3",
      enName: "Six",
      jpName: "Roku",
      image: "assets/images/numbers/number_six.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_seven_sound.mp3",
      enName: "Seven",
      jpName: "Sebun",
      image: "assets/images/numbers/number_seven.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_eight_sound.mp3",
      enName: "Eight",
      jpName: "Hachi",
      image: "assets/images/numbers/number_eight.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_nine_sound.mp3",
      enName: "Nine",
      jpName: "Kyu",
      image: "assets/images/numbers/number_nine.png",
    ),
    ItemModel(
      // fe kol mra pastad3e el constractor pta3 el class ele pa5od meno object
      sound: "sounds/numbers/number_ten_sound.mp3",
      enName: "Ten",
      jpName: "Ju",
      image: "assets/images/numbers/number_ten.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Numbers",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xff47332C),
        ),
        body: ListView.builder(
          itemCount: numbers
              .length, // law 3mlt hena hash fa mesh 7ygplk error 3la tool mesh 7ygep error ele lma te3mel scroll 3la el Screen
          itemBuilder: (context, index) {
            return ListItem(
              itemModel: numbers[index],
              color: Color(0xffF79B3A),
            );
          },
        ),
      ),
    );
  }
}













// 7alet moshklt el Ui pe el List View Hena   pas 7sta5dem ListView.Builder Fook
/**
 *  body: ListView(
          // children: [
          //   // NumbersCategory(number: numbers[0]),
          //   // NumbersCategory(number: numbers[1]),
          //   // NumbersCategory(number: numbers[2]),
          //   // NumbersCategory(number: numbers[3]),
          //   // NumbersCategory(number: numbers[4]),
          //   // NumbersCategory(number: numbers[5]),
          //   // NumbersCategory(number: numbers[6]),
          //   // NumbersCategory(number: numbers[7]),
          //   // NumbersCategory(number: numbers[8]),
          //   // NumbersCategory(number: numbers[9]),
          // ],

          children: getList(numbers), // i used the logic to draw the Ui
        ),
      ),
    );
  }

  List<Widget> getList(List<Number> numbers) {
    List<Widget> ItemList = [];
    for (int i = 0; i < numbers.length; i++) {
      ItemList.add(NumbersCategory(number: numbers[i]));
    }
    return ItemList;
  }
}
 */




/***
 * 
 * 
 * 
 * import 'package:flutter/material.dart';
import 'package:language_learining_app/component/component_item_numbers_page.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Numbers",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xff47332C),
        ),
        body: Column(
          children: [
            NumbersCategory(
              image: Image.asset("assets/images/numbers/number_one.png"),
              text1: "ichi",
              text2: "one",
            ),
            NumbersCategory(
              image: Image.asset("assets/images/numbers/number_two.png"),
              text1: "Ni",
              text2: "Two",
            ),
            NumbersCategory(
              image: Image.asset("assets/images/numbers/number_three.png"),
              text1: "San",
              text2: "Three",
            ),
            NumbersCategory(
              image: Image.asset("assets/images/numbers/number_four.png"),
              text1: "Shi",
              text2: "Four",
            ),
            NumbersCategory(
              image: Image.asset("assets/images/numbers/number_five.png"),
              text1: "Go",
              text2: "Five",
            ),
            NumbersCategory(
              image: Image.asset("assets/images/numbers/number_six.png"),
              text1: "Roku",
              text2: "six",
            ),
          ],
        ),
      ),
    );
  }
}

 */