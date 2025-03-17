import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String image;
  final String jpName;
  final String enName;

  const ItemModel(
      {required this.sound,
      required this.enName,
      required this.jpName,
      required this.image});


    void _playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }


}

class PhrasesModel {
  final String sound;
  final String phrase;

  const PhrasesModel({
    required this.sound,
    required this.phrase,
  });
}

// 5alet  esmo itemModel 3ashan hwa py3per 3an el item ele 7tt7at fe el saf7at 

/*
class FamilyMeber
{
  final String image ; 
  final String JpName ; 
  final String EnName ;
  final String sound ; 

  const FamilyMeber({
    required this.image ,
    required this.JpName ,
    required this.EnName , 
    required this.sound }) ; 
}
*/  
// kman kan fe 7al we hwa eny a3mel class gedded pa da mesh a7san 7aga  fe el 7ala de pas hya a7san 7aga 3moma
