// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:getx_first_long_example/views/add_record_view.dart';
import 'package:getx_first_long_example/views/graph_view.dart';

import 'history_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  Widget _currentScreen = const GraphPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Get.to(const AddRecordView());
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          height: Get.height / 12,
          activeColor: Colors.white,
          inactiveColor: Colors.grey,
          gapLocation: GapLocation.center,
          backgroundColor: Colors.black,
          icons: const [Icons.show_chart, Icons.history],
          iconSize: 30,
          activeIndex: _currentTab,
          onTap: (number) {
            setState(() {
              _currentTab = number;
              if (_currentTab == 0) {
                _currentScreen = const GraphPage();
              } else {
                _currentScreen = HistoryPage();
              }
            });
          }),
    );
  }
}
