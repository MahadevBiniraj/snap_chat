import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';

class Addlist extends StatelessWidget {
  const Addlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          // height: 70,
          // width: 350,
          color: Colorconstants.bgwhite,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/474x/21/cb/af/21cbafe9b6d82f2efef056067054c484.jpg"),
                radius: 30,
              ),
              Column(
                children: [
                  Text(
                    "Shamil Civil",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "shamilshajahan7",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "IN MY CONTACTS",
                    style:
                        TextStyle(fontSize: 12, color: Colorconstants.textgrey),
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                height: 40,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colorconstants.textgrey.withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.person_add),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Accept",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "x",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colorconstants.textgrey),
              )
            ],
          ),
        );
      },
    );
  }
}
