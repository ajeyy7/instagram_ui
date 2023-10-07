import 'package:flutter/material.dart';

class ProfileTag extends StatelessWidget {
  const ProfileTag({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
               image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage("assets/images/tgg.jpg"))
              ),
            ),
          );
        });
  }
}
