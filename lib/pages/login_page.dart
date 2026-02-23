import 'package:flutter/material.dart';

import 'package:portfolio_23/comp/my_drawer.dart' show MyDrawer;
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: MyDrawer(),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: ScrollTransformView(
        children: [
          ScrollTransformItem(
            builder: (context) {
              return Image.asset(
                'assets/IMG_3936.jpg',
                fit: BoxFit.cover,
                width: screenSize.width,
                height: screenSize.height,
                //opacity: Opacity(opacity: 0.5),
              );
            },
          ),
        ],
      ),

      // Example color value
    );
  }
}
