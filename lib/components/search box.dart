import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing:1,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              //  height: 40,
              decoration: const BoxDecoration(image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/add.jpg"))),
            ),
          );
        });
  }
}
