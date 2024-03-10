import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/your_username/your_username.dart';

class Signupurbirthday extends StatelessWidget {
  const Signupurbirthday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colorconstants.bgwhite,
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5)),
              const Center(
                child: Text(
                  "What's Your birthday?",
                  style: TextStyle(fontSize: 31, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "BIRTHDAY",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E88E5)),
                    ),
                  ],
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Yourusername(),
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
              )
            ])));
  }
}
