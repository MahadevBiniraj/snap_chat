import 'package:flutter/material.dart';
import 'package:snapchat/view/camera/camera.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Camera(),
      debugShowCheckedModeBanner: false,
    );
  }
}
