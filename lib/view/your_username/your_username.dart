import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/pick_a_username/pick_a_username.dart';
import 'package:snapchat/view/set_a_password/set_a_password.dart';

class Yourusername extends StatelessWidget {
  const Yourusername({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colorconstants.bgwhite,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Your username",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Mahadev98.12",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pickusername(),
                        ));
                  },
                  child: Text(
                    "Change my username",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colorconstants.normalblue,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                height: 350,
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
              )
            ],
          ),
        ));
  }
}
