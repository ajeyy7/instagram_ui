import 'package:flutter/material.dart';
class ProfileStory extends StatelessWidget {
  const ProfileStory({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 85,
            width: 85,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                )),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 79,
                height: 79,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 78,
                  height: 78,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, spreadRadius: 1)
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/instdp.jpg"))),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(text),
        ],
      ),
    );
  }
}
