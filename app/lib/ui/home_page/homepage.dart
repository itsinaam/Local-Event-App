import 'package:app/ui/home_page/homepage_background.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomepageBackground(screen_height: MediaQuery.of(context).size.height)
        ],
      ),
    );
  }
}
