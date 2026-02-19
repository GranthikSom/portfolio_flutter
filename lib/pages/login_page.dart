import 'package:flutter/material.dart';
import 'package:portfolio_23/comp/my_drawer.dart';
import 'package:portfolio_23/pages/settings_page.dart';
import 'package:provider/provider.dart';
import 'package:portfolio_23/themes/theme_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

@override
class _LoginPageState extends State<LoginPage> {
  // ignore: non_constant_identifier_names
  late ThemeProvider themeProvider;

  @override
  void initState() {
    super.initState();
    //initialize playlistProvider
    themeProvider = Provider.of<ThemeProvider>(context, listen: false);
  }

  //navigate to song page
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(text: "Home"),
            Tab(text: "About"),
            Tab(text: "Projects"),
            Tab(text: "Skills"),
            Tab(text: "Contact"),
            Tab(text: "More"),
          ],
        ),

        body: const TabBarView(
          children: [
            Center(child: SettingsPage()),
            Center(child: Text("About Page")),
            Center(child: Text("Projects Page")),
            Center(child: Text("Skills Page")),
            Center(child: Text("Contact Page")),
            Center(child: Text("More Page")),
          ],
        ),
      ),
    );
  }
}
