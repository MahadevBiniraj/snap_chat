import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/set_a_password/set_a_password.dart';

class Pickusername extends StatelessWidget {
  const Pickusername({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colorconstants.bgwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Pick a username",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            "Your username is how freinds add you on",
            style: TextStyle(
                fontWeight: FontWeight.w900, color: Colorconstants.textgrey),
          ),
          const Text(
            " snapchat.",
            style: TextStyle(
                fontWeight: FontWeight.w900, color: Colorconstants.textgrey),
          ),
          SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "USERNAME",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colorconstants.normalblue),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Username available",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colorconstants.textgrey),
                ),
              ),
            ],
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
                      builder: (context) => Setpassword(),
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
