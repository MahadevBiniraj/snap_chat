import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/core/constant_images/imageconstants.dart';
import 'package:snapchat/view/get_started/get_started.dart';
import 'package:snapchat/view/login_page/login_page.dart';

class Snapchatlogin extends StatelessWidget {
  const Snapchatlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFC00),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(child: Image.asset(ImageConstants.snapicon)),
          SizedBox(
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginpage(),
                        ));
                  },
                  child: Container(
                    height: 36,
                    width: 128,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFFFFF)),
                    child: Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Getstarted())));
                  },
                  child: Container(
                    height: 36,
                    width: 128,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colorconstants.buttonblue),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
