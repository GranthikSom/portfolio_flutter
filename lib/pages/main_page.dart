import 'package:flutter/material.dart';

import 'package:portfolio_23/comp/my_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: MyDrawer(),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: ScrollTransformView(
        children: [
          // Parallax effect
          ScrollTransformItem(
            builder: (scrollOffset) {
              return Image.asset(
                'assets/about.png',
                width: screenSize.width,
                height: screenSize.height,
              );
            },
            offsetBuilder: (scrollOffset) => Offset(0, scrollOffset),
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              return Container(
                width: 900,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(
                    context,
                  ).colorScheme.secondary.withOpacity(0.99),
                ),
                child: const Center(
                  child: Text(
                    "1st ",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
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
                width: 900,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(
                    context,
                  ).colorScheme.secondary.withOpacity(0.99),
                ),
                child: const Center(
                  child: Text(
                    "2nd ",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
