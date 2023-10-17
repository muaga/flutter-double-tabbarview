import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondTabBar extends StatelessWidget {
  final VoidCallback onTabPressed;

  const SecondTabBar({
    required this.onTabPressed,
    required TabController? secondTabController,
  }) : _secondTabController = secondTabController;

  final TabController? _secondTabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _secondTabController,
      tabs: [
        Tab(
          icon: Icon(Icons.home, color: Colors.black),
        ),
        Tab(
          icon: Icon(CupertinoIcons.heart_fill, color: Colors.black),
        ),
        Tab(
          icon: Icon(Icons.settings, color: Colors.black),
        )
      ],
      onTap: (value) {
        onTabPressed();
      },
    );
  }
}
