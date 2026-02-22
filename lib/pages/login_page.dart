import 'package:flutter/material.dart';
import 'package:portfolio_23/pages/settings_page.dart';
import 'package:portfolio_23/comp/my_drawer.dart' show MyDrawer;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 0,
          bottom: TabBar(
            splashBorderRadius: BorderRadius.all(Radius.circular(20)),
            isScrollable: true,
            tabs: [
              Tab(text: "Home"),
              Tab(text: "About"),
              Tab(text: "Projects"),
              Tab(text: "Skills"),
              Tab(text: "Contact"),
              Tab(text: "More"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ListView(
              children: [
                SettingsPage(), // Home page
              ],
            ),
            SingleChildScrollView(
              child: Center(child: MyDrawer()), // About page
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Center(child: Text("Projects Page")),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Center(child: Text("Skills Page")),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: SettingsPage(),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Center(child: Text("More Page")),
            ),
          ],
        ),
      ),
    );
  }
}
