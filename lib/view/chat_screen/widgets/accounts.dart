import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snapchat/controller/chat_screencontroller.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.symmetric(vertical: 2),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colorconstants.textgrey.withOpacity(0.3)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Homechat.chatModels[index].name,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(Homechat.chatModels[index].newsnap)
                      ],
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.mode_comment))
            ],
          ),
        ),
      ),
    );
  }
}
