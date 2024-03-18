import 'package:flutter/material.dart';
import 'package:snapchat/controller/bottomsheet_controller.dart';

import 'package:snapchat/core/constant_colors/color_constants.dart';

class Bottomsheetcontainer extends StatelessWidget {
  const Bottomsheetcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colorconstants.textgrey.withOpacity(0.4))),
                  child: Text(
                    Bottomchat.bottomsheetmodels[index].textname,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Colorconstants.textgrey.withOpacity(0.7)),
                  color: Colorconstants.bgwhite.withOpacity(0.2)),
              child: Center(
                child: Text(
                  "Done",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
