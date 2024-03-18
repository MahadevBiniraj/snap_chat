import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageConstants.mepic), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colorconstants.normalblack.withOpacity(0.4)),
                        child: Image(
                          image: NetworkImage(
                              "https://pbs.twimg.com/media/FMVPiVMVUAA_U35.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colorconstants.normalblack.withOpacity(0.4)),
                    child: Icon(
                      Icons.search,
                      color: Colorconstants.bgwhite,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 160,
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colorconstants.normalblack.withOpacity(0.4)),
                    child: Icon(
                      Icons.group_add,
                      color: Colorconstants.bgwhite,
                      size: 30,
                    ),
                  ),
                  //right icons row with column
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    // height: 100,
                    // width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colorconstants.normalblack.withOpacity(0.4)),
                    child: Column(
                      children: [
                        Icon(
                          Icons.cached,
                          color: Colorconstants.bgwhite,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.bolt,
                          color: Colorconstants.bgwhite,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colorconstants.bgwhite,
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.collections_bookmark,
                      color: Colorconstants.bgwhite,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 120,
                      // width: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colorconstants.bgwhite),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: CircleAvatar(
                          backgroundColor: Colorconstants.normalblack,
                          radius: 50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.mood,
                      color: Colorconstants.bgwhite,
                      size: 50,
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
