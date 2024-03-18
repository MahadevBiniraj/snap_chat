import 'package:flutter/material.dart';

import 'package:snapchat/view/snap_chatlogin/snap_chatlogin.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Snapchatlogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
