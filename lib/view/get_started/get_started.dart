import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/core/constant_images/imageconstants.dart';

import 'package:snapchat/view/signup_yourname/signup_yourname.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colorconstants.bgwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Get Started",
              style: TextStyle(fontSize: 31, fontWeight: FontWeight.w400),
            ),
          ),
          Text(
            "Enable app permission to",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "make signup easy",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 100,
          ),
          Image.asset(ImageConstants.cartoonpic),
          SizedBox(
            height: 100,
          ),
          Text("Tap Allow when prompted"),
          SizedBox(
            height: 105,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.contacts,
                            color: Colors.green,
                          ),
                          Text(" Allow"),
                          Text(" Snapchat"),
                          Text(" to")
                        ],
                      ),
                      Text("access your contacts ?")
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => Signupurname()));
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.contacts,
                                              color: Colors.green,
                                            ),
                                            Text(" Allow"),
                                            Text(" Snapchat"),
                                            Text(" to")
                                          ],
                                        ),
                                        Text("make and manage phone calls?")
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Signupurname(),
                                                ));
                                          },
                                          child: Text("Allow",
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 23, 126, 27),
                                                  fontWeight: FontWeight.w500)))
                                    ],
                                  ));
                        },
                        child: Text(
                          "ALLOW",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 23, 126, 27),
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              );
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
          )
        ],
      ),
    );
  }
}
