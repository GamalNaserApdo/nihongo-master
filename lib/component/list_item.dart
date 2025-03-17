import 'package:flutter/material.dart';
import 'package:language_learining_app/modles/ItemModel.dart';
import 'package:audioplayers/audioplayers.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.itemModel,
    required this.color,
  });

  final ItemModel itemModel; // Object containing item details
  final Color color; // Background color for the item container

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          _buildImage(), // Build the image container
          _buildTextColumn(), // Build the text column
          const Spacer(flex: 1), // Add space between text and icon
          _buildPlayButton(), // Build the play button
        ],
      ),
    );
  }

  // Build the image container
  Widget _buildImage() {
    return Container(
      color: const Color(0xffFFF4D9),
      child: Image.asset(itemModel.image),
    );
  }

  // Build the text column with Japanese and English names
  Widget _buildTextColumn() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemModel.jpName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            itemModel.enName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  // Build the play button
  Widget _buildPlayButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: IconButton(
        onPressed: _playSound, // Play sound when pressed
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }

  // Play the sound associated with the item
  void _playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(itemModel.sound));
  }
}



