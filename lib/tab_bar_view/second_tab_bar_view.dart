import 'package:flutter/material.dart';

class SecondTabBarView extends StatelessWidget {
  const SecondTabBarView({
    super.key,
    required TabController? secondTabController,
  }) : _secondTabController = secondTabController;

  final TabController? _secondTabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: _secondTabController, children: [
      Center(
        child: Container(
          child: Text("home"),
        ),
      ),
      Center(
        child: Container(
          child: Text("Favorite"),
        ),
      ),
      Center(
        child: Container(
          child: Text("setting"),
        ),
      ),
    ]);
  }
}
