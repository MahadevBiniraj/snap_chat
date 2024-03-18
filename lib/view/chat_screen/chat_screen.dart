import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/chat_screen/widgets/accounts.dart';
import 'package:snapchat/view/chat_screen/widgets/bottom_sheet_container.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colorconstants.bgwhite,
      appBar: AppBar(
        title: Text("Chat"),
        centerTitle: true,
        leadingWidth: 110,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/550x/f6/69/e7/f669e7f6b0c697c22e69e0531d2e6bac.jpg"),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
          ),
        ),
        actions: [
          Icon(Icons.person_add),
          SizedBox(
            width: 15,
          ),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Bottomsheetcontainer();
                  },
                );
              },
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Accounts(),
    );
  }
}
