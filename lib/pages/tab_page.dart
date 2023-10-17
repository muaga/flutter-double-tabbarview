import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_double_tab_app/tab_bar/first_tab_bar.dart';
import 'package:flutter_double_tab_app/tab_bar/second_tab_bar.dart';
import 'package:flutter_double_tab_app/tab_bar_view/first_tab_bar_view.dart';
import 'package:flutter_double_tab_app/tab_bar_view/second_tab_bar_view.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  int tabNumber = 1; // tabbar의 상태
  TabController? _firstTabController;
  TabController? _secondTabController;

  @override
  void initState() {
    super.initState();
    _firstTabController = TabController(length: 3, vsync: this);
    _secondTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter TabBar Example 1"),
      ),
      body: Column(
        children: [
          FirstTabBar(
            firstTabController: _firstTabController,
            onTabPressed: () {
              setState(() {
                tabNumber = 1;
                print("tabNumber : ${tabNumber}");
              });
            },
          ),
          SecondTabBar(
            secondTabController: _secondTabController,
            onTabPressed: () {
              setState(() {
                tabNumber = 2;
              });
            },
          ),
          Expanded(
            child: Stack(
              children: [
                if (tabNumber == 1)
                  Positioned(
                      child: FirstTabBarView(
                          firstTabController: _firstTabController)),
                if (tabNumber == 2)
                  Positioned(
                      child: SecondTabBarView(
                          secondTabController: _secondTabController)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
