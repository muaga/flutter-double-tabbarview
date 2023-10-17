import 'package:flutter/material.dart';

class FirstTabBarView extends StatelessWidget {
  const FirstTabBarView({
    super.key,
    required TabController? firstTabController,
  }) : _firstTabController = firstTabController;

  final TabController? _firstTabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: _firstTabController, children: [
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
