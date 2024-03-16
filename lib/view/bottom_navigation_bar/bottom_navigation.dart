import 'package:flutter/material.dart';
import 'package:snapchat/view/camera/camera.dart';
import 'package:snapchat/view/chat_screen/chat_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    Container(
      color: Colors.yellow,
    ),
    Chatscreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red,
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value != 2) {
            selectedIndex = value;
            setState(() {});
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Camera(),
                ));
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.mode_comment), label: ""),

          // center bottm nav  button
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
          const BottomNavigationBarItem(icon: Icon(Icons.group), label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.change_history), label: ""),
        ],
      ),
    );
  }
}
