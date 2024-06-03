import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class App_Bar extends StatefulWidget {
  final String? avatarUrl;

  const App_Bar({super.key, this.avatarUrl});

  @override
  State<App_Bar> createState() => _App_BarState();
}

class _App_BarState extends State<App_Bar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Pattern.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      centerTitle: true,
      title: Image.asset(
        'assets/images/rulogo.png',
        height: 120,
      ),
      leading: Container(
        margin: const EdgeInsets.only(left: 8.0, top: 10.0),
        padding: const EdgeInsetsDirectional.only(start: 10),
        child: Align(
          alignment: Alignment.centerRight,
          child: widget.avatarUrl != null
              ? Image.asset(
            widget.avatarUrl!,
          )
              : GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Row(
              children: [
                Icon(Icons.arrow_back, color: Colors.black),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      leadingWidth: 90,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: IconButton(
            icon: const Icon(Icons.volume_up_rounded),
            onPressed: () {},
            color: fromCssColor("#4B4237"),
          ),
        ),
      ],
    );
  }
}
