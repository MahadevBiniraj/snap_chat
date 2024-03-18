import 'package:flutter/material.dart';
import 'package:snapchat/view/chat_screen/widgets/add2list.dart';

import 'package:snapchat/view/chat_screen/widgets/addlist.dart';

class Addbottomsheet extends StatelessWidget {
  const Addbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(166, 232, 229, 229),
      appBar: AppBar(
        title: Text(
          "Add friends",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.expand_more,
          size: 40,
        ),
        actions: [Icon(Icons.more_horiz)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                hintText: "Search...",
                prefix: Icon(
                  Icons.search,
                  size: 25,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.mobile_friendly),
                    Text(
                      "Invite your friends!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ),
            Text(
              "Added Me",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Addlist(),
            Text(
              "Quick Add",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Add2list()
          ],
        ),
      ),
    );
  }
}
