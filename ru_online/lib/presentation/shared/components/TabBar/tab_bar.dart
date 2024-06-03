import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({super.key});

  @override
  State<TabNavigation> createState() => _TabNavigation();
}

class _TabNavigation extends State<TabNavigation> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(Icons.home, color: _tabController.index == 0 ? Colors.black : Colors.grey),
              child: Text(
                'Início',
                style: GoogleFonts.lato(
                  color: _tabController.index == 0 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            Tab(
              icon: Icon(Icons.account_balance_wallet, color: _tabController.index == 1 ? Colors.black : Colors.grey),
              child: Text(
                'Carteira',
                style: GoogleFonts.lato(
                  color: _tabController.index == 1 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            Tab(
              icon: Icon(Icons.restaurant_menu, color: _tabController.index == 2 ? Colors.black : Colors.grey),
              child: Text(
                'Cardápio',
                style: GoogleFonts.lato(
                  color: _tabController.index == 2 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            Tab(
              icon: Icon(Icons.rate_review, color: _tabController.index == 3 ? Colors.black : Colors.grey),
              child: Text(
                'Avaliar',
                style: GoogleFonts.lato(
                  color: _tabController.index == 3 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            Tab(
              icon: Icon(Icons.person, color: _tabController.index == 4 ? Colors.black : Colors.grey),
              child: Text(
                'Perfil',
                style: GoogleFonts.lato(
                  color: _tabController.index == 4 ? Colors.black : Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Text('Início Page')),
              Center(child: Text('Carteira Page')),
              Center(child: Text('Cardápio Page')),
              Center(child: Text('Avaliar Page')),
              Center(child: Text('Perfil Page')),
            ],
          ),
        ),
      ],
    );
  }
}
