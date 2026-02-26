import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio_23/comp/about_text.dart';

//import 'package:portfolio_23/comp/my_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      //drawer: MyDrawer(),
      //appBar: AppBar(backgroundColor: Colors.transparent),
      body: ScrollTransformView(
        children: [
          // Parallax effect
          ScrollTransformItem(
            builder: (scrollOffset) {
              final offScreenpercentage = min(
                scrollOffset / screenSize.height,
                5.0,
              );
              return Image.asset(
                'assets/about.png',

                width:
                    screenSize.width -
                    (screenSize.width * 0.2 * offScreenpercentage),
                height:
                    screenSize.height -
                    (screenSize.height * 0.5 * offScreenpercentage),
                fit: BoxFit.cover,
              );
            },
            offsetBuilder: (scrollOffset) => Offset(0, scrollOffset),
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              return Container(
                width: screenSize.width,
                height: screenSize.height,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(
                    context,
                  ).colorScheme.secondary.withOpacity(0.1),
                ),
                child: const Center(child: AboutText()),
              );
            },
          ),
          ScrollTransformItem(
            builder: (context) {
              return const SizedBox(height: 50);
            },
          ),

          ScrollTransformItem(
            builder: (scrollOffset) {
              return Container(
                width: 1000,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(
                    context,
                  ).colorScheme.secondary.withOpacity(0.1),
                ),
                child: const Center(child: AboutText()),
              );
            },
          ),
        ],
      ),
    );
  }
}
