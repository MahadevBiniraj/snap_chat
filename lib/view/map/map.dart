import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_images/imageconstants.dart';

class map extends StatelessWidget {
  const map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageConstants.map))),
      ),
    );
  }
}
