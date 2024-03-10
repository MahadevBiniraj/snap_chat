import 'package:flutter/material.dart';

import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/signup_yourname/signup_yourname.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colorconstants.bgwhite,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5)),
            const Center(
              child: Text(
                "Log In",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
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
                    "USERNAME OR EMAIL",
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
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "PASSWORD",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1E88E5)),
                  ),
                ],
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Forgot Your Password",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1E88E5)),
            ),
            const SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signupurname(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colorconstants.buttonblue),
                    child: const Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
