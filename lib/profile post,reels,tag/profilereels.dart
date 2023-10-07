import 'package:flutter/material.dart';

class ProfileReels extends StatelessWidget {
  const ProfileReels({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 23,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/prpic.jpeg"))
              ),
            ),
          );
        });
  }
}
