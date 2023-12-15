import 'package:flutter/material.dart';

import 'pages/intro_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: introPage(),
        routes: {
          '/intropage': (context) => const introPage(),
          '/menupage': (context) => const MenuPage(),
        });
  }
}
