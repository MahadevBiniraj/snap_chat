import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/bottom_navigation_bar/bottom_navigation.dart';
import 'package:snapchat/view/mobile_no/mobile_no.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colorconstants.bgwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "What's your email address?",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mobileno(),
                    ));
              },
              child: Text(
                "Sign up with phone instead",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colorconstants.buttonblue),
              )),
          SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "EMAIL ADDRESS",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colorconstants.normalblue),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.black,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          SizedBox(
            height: 320,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBarScreen(),
                    ));
              },
              child: Container(
                height: 50,
                width: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colorconstants.buttonblue),
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colorconstants.bgwhite),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
