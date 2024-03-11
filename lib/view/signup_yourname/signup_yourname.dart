import 'package:flutter/material.dart';
import 'package:snapchat/core/constant_colors/color_constants.dart';
import 'package:snapchat/view/signup_yourbirthday/signup_yourbirthday.dart';

class Signupurname extends StatelessWidget {
  Signupurname({super.key});
  final TextEditingController firstname = TextEditingController();
  final TextEditingController secondname = TextEditingController();

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
                "What's Your name?",
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
                    "FIRST NAME",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1E88E5)),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: firstname,
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
                    "LAST NAME",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1E88E5)),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: secondname,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "enter the secondname";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "By tapping Sign Up & Accept,You acknowledge that",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        Text("you have read the "),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              color: Colorconstants.normalblue,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(" and agree to the"),
                      ],
                    ),
                    Text(
                      "Terms of Service.",
                      style: TextStyle(
                          color: Colorconstants.normalblue,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ],
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
                          builder: (context) => Signupurbirthday(),
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
                        "Sign Up & Accept",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
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
