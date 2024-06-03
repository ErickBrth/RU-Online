
import 'package:flutter/material.dart';
import 'package:ru_online/presentation/profile/pages/profile_page.dart';

import '../../home/components/app_bar.dart';
import '../../home/pages/home.dart';
import '../../shared/components/Botton Navigation Bar/bottom_navigation.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Home(),
    WalletPage(),
    MenuPage(),
    FeedbackPage(),
    ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: App_Bar(avatarUrl: 'assets/images/avatar.png',),
      ),
      body: SafeArea(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
