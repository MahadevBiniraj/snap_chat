import 'package:flutter/material.dart';
import 'package:snapchat/view/snap_chatlogin/snap_chatlogin.dart';

class MyWidget extends StatelessWidget {
  const MyWidget.Bottomnavbarscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.mode_comment), label: ""),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Snapchatlogin(),
                      ));
                },
                icon: Icon(Icons.photo_camera)),
            label: ""),
        // BottomNavigationBarItem(icon: Icon(Icons.group), label: "")
      ]),
    );
  }
}
