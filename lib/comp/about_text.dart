import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      child: const Align(
        alignment: Alignment.centerRight,
        child: Text(
          'I am a passionate Flutter developer with a knack for crafting beautiful and functional applications. With a strong foundation in Dart and Flutter, I enjoy bringing ideas to life through code. I am always eager to learn and explore new technologies, and I thrive in collaborative environments where creativity and innovation flourish.',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
