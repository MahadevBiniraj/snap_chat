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
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://cdn.britannica.com/81/198481-050-10CED2D9/Gilberto-Godoy-Filho-ball-Brazil-Argentina-volleyball-2007.jpg"),
                      ),
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
                          Icon(
                            Icons.favorite,
                            color: Colorconstants.bgwhite,
                            size: 40,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.mark_chat_unread,
                            color: Colorconstants.bgwhite,
                            size: 40,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.share,
                            color: Colorconstants.bgwhite,
                            size: 40,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colorconstants.bgwhite,
                            size: 40,
                          ),
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
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://tinyjpg.com/images/social/website.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Spotlight",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
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
