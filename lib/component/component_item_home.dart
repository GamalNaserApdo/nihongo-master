import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? message; // Text to display in the category
  final Color? color; // Background color of the category
  final VoidCallback onTap; // Callback function when the category is tapped

  // Constructor with required parameters
  const Category({
    super.key,
    this.message,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the provided callback on tap
      child: Container(
        alignment: Alignment.centerLeft, // Align text to the left
        padding: const EdgeInsets.only(left: 16), // Add padding to the left
        color: color, // Set the background color
        width: double.infinity, // Take up the full width
        height: 100, // Set a fixed height
        child: Text(
          message ?? 'No Message', // Display the message or a fallback
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}