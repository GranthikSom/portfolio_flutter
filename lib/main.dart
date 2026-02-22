// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:portfolio_23/themes/theme_provider.dart';

import 'pages/login_page.dart';
import 'package:provider/provider.dart';
import 'dart:ui';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image(image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover),

          // Blur Layer
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              color: Theme.of(
                context,
              ).colorScheme.surface.withOpacity(0.05), // dark overlay
            ),
          ),
          const LoginPage(),
        ],
      ),
    );
  }
}
