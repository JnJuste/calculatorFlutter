import 'package:flutter/material.dart';

// Define a custom Flutter widget named MyButton, which extends StatelessWidget.
class MyButton extends StatelessWidget {
  // Declare instance variables for the button's color, text color, displayed text, and the callback function when the button is tapped.
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  // Constructor for MyButton, where 'required' indicates that buttonText must be provided.
  const MyButton({
    Key? key,
    this.color,
    this.textColor,
    required this.buttonText,
    this.buttonTapped,
  }) : super(key: key);

  // Override the build method to define how the widget should be rendered.
  @override
  Widget build(BuildContext context) {
    // Use a GestureDetector to handle tap gestures on the button.
    return GestureDetector(
      onTap:
          buttonTapped, // Assign the provided callback function to handle button taps.
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(20), // Apply rounded corners to the button.
          child: Container(
            color: color, // Set the background color of the button.
            child: Center(
              child: Text(
                buttonText, // Display the provided text on the button.
                style: TextStyle(
                    color: textColor,
                    fontSize: 35), // Set text color and font size.
              ),
            ),
          ),
        ),
      ),
    );
  }
}
