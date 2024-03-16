import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/core/constant_images/imageconstants.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.bgwhite,
      body: Container(
        height: double.infinity,
        child: Image(
          image: AssetImage(ImageConstants.mepic),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
