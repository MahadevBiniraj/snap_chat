import 'package:flutter/material.dart';
import 'package:snapchat/view/bottom_navigation_bar/bottom_navigation.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWidget.Bottomnavbarscreen());
  }
}
