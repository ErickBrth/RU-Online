import 'package:flutter/material.dart';

class App_Bar extends StatefulWidget {
  const App_Bar({super.key});

  @override
  State<App_Bar> createState() => _App_BarState();
}

class _App_BarState extends State<App_Bar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/Pattern.png',
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(
            'assets/images/rulogo.png',
            height: 100,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.volume_up_rounded),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
