import 'package:flutter/material.dart';
import 'package:ru_online/presentation/home/components/app_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(100), child: App_Bar()),
    );
  }
}
