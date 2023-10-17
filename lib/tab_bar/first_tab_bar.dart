import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTabBar extends StatelessWidget {
  final VoidCallback onTabPressed;
  final TabController? _firstTabController;

  const FirstTabBar({
    required this.onTabPressed,
    required TabController? firstTabController,
  }) : _firstTabController = firstTabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _firstTabController,
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
