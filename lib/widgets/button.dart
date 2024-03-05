import 'package:flutter/material.dart';
import 'package:social_media_project/constants/pallate.dart';

class SignButton extends StatelessWidget {
  final String nameText;
  const SignButton({super.key, required this.nameText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Pallate.mainColor,
          ),
          child: Center(
              child: Text(
            nameText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )),
        ),
      ),
    );
  }
}
