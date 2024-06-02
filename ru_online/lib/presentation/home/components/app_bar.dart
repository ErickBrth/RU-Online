import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:from_css_color/from_css_color.dart';

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Image.asset(
              'assets/images/rulogo.png',
              height: 100,
            ),
            leading: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/images/avatar.png',
              ),
            ),
            leadingWidth: 60,
            actions: [
              IconButton(
                icon: const Icon(Icons.volume_up_rounded),
                onPressed: () {},
                color: fromCssColor("#4B4237"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
