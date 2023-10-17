import 'package:flutter/material.dart';
import 'package:flutter_double_tab_app/pages/tab_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabPage(),
    );
  }
}
