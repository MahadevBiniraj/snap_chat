import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';

class Reel extends StatelessWidget {
  const Reel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"),
                          fit: BoxFit.cover)),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Text(
                        "Cstorm Vollleyball",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colorconstants.bgwhite),
                      ),
                      Spacer(),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.mark_chat_unread),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.share),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.more_horiz),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 10,
          right: 10,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(),
                    Icon(Icons.search),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Spotlight")],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.add_box)],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
