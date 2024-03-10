import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/email_address/email_address.dart';

class Setpassword extends StatelessWidget {
  const Setpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colorconstants.bgwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Set a Password",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            "Your password should be at least 8 charcters",
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
                  "PASSWORD",
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
                  suffix: Text("Hide"),
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
                      builder: (context) => Email(),
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
