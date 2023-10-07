import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String text;
  final String image;

  const Stories({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
                )),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 79,
                height: 79,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 78,
                  height: 78,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 1)
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image))),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(text),
        ],
      ),
    );
  }
}
