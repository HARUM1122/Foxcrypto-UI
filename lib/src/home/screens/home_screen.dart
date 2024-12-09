import 'package:flutter/material.dart';

import '../components/bottom_navigation_button.dart';

import '../../shared/utils/constants.dart';
import '../../shared/components/svg_icon.dart';
import '../../shared/extensions/extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  void _changePage(int newPage) {
    setState(() {
      _currentPage = newPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF16171D),
      appBar: AppBar(
        actions: const [
          SvgIcon(
            path: AssetIcon.search,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(width: 14),
          SvgIcon(
            path: AssetIcon.alerts,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(width: 20)
        ],
      ),
      body: Center(
        child: Text(
          switch (_currentPage) {
            0 => "Home",
            1 => "Market",
            2 => "Portfolio",
            3 => "Settings",
            _=> "Unknown page"
          },
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF5C249),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Color(0xFFFFFFFF),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        color: const Color(0xCC262932),
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          height: context.padding.bottom + 40,
          child: Row(
            children: [
              BottomNavigatorButton(
                title: 'Home',
                iconPath: AssetIcon.home,
                selected: _currentPage == 0,
                onPressed: () => _changePage(0)
              ),
              const SizedBox(width: 24),
              BottomNavigatorButton(
                title: 'Market',
                iconPath: AssetIcon.barChart,
                selected: _currentPage == 1,
                onPressed: () => _changePage(1)
              ),
              const Spacer(),
              BottomNavigatorButton(
                title: 'Portfolio',
                iconPath: AssetIcon.pieChart,
                selected: _currentPage == 2,
                onPressed: () => _changePage(2)
              ),
              const SizedBox(width: 24),
              BottomNavigatorButton(
                title: 'Settings',
                iconPath: AssetIcon.settings,
                selected: _currentPage == 3,
                onPressed: () => _changePage(3)
              )
            ],
          ),
        ),
      ),
    );
  }
}