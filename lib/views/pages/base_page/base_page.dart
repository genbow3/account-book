import 'package:account_book/models/resources/i18n/generated/translations.g.dart';
import 'package:account_book/views/pages/base_page/budget_screen.dart';
import 'package:account_book/views/pages/base_page/calendar_screen.dart';
import 'package:account_book/views/pages/base_page/input_new_screen.dart';
import 'package:account_book/views/pages/base_page/menu_screen.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _currentScreenIndex = 0;

  void _changeScreen(int index) {
    setState(() {
      _currentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// アプリバー
      appBar: AppBar(
        title: const Text('Hello world.'),
      ),

      /// 画面コンテンツ
      body: [
        const InputNewScreen(),
        const CalendarScreen(),
        const BudgetScreen(),
        const MenuScreen(),
      ].elementAt(_currentScreenIndex),

      /// ボトムナビゲーションバー
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreenIndex,
        onTap: _changeScreen,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.amber,
        backgroundColor: Colors.lightGreen,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.edit),
            label: t.bottom_navigation_bar.input_new_screen,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_today),
            label: t.bottom_navigation_bar.calendar_screen,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.analytics_outlined),
            label: t.bottom_navigation_bar.budget_screen,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.more_horiz),
            label: t.bottom_navigation_bar.menu_screen,
          ),
        ],
      ),
    );
  }
}
