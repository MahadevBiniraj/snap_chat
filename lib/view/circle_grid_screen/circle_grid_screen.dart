import 'package:flutter/material.dart';

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
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
      ),
    );
  }
}
