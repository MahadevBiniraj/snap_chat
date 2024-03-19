import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/circle_grid_screen/widgets/story_avatar.dart';

class Circlegrid extends StatelessWidget {
  const Circlegrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 110,
        leading: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/736x/1c/d6/66/1cd666f74a03f34c074271355889b63b.jpg"),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
        title: Text(
          "Stories",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friends",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Storyavatar(),
          Text(
            "Discover",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 320,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Mahadev",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colorconstants.bgwhite),
                            ),
                            Text(
                              "yesterday",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colorconstants.textgrey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
