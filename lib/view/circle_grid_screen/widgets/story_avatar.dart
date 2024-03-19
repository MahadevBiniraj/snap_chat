import 'package:flutter/material.dart';
import 'package:snapchat/controller/Story_avatar_controller/Storyavatarcontroller.dart';

class Storyavatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              10,
              (index) => Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurple),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                Storycontroller.storyAvatarList[index].propic),
                          ),
                        ),
                      ),
                      Text(
                        Storycontroller.storyAvatarList[index].cname,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ))),
    );
  }
}
