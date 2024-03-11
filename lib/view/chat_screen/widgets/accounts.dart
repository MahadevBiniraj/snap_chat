import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => Container(
        height: 80,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mahadev B"),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("received")
                      ],
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.mode_comment))
            ],
          ),
        ),
      ),
    );
  }
}
