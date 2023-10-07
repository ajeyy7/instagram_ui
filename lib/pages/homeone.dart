import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/components/posts%20container.dart';
import 'package:instagram_ui/components/profilepic_widget.dart';
import 'package:instagram_ui/components/stories%20container.dart';

class MainHome extends StatelessWidget {
  MainHome({super.key});
  final List stryname=["your story  ",
    "strell",
    "traction4",
    "motox",
    "babz",
    "d_p1lot",
  ];
  final List stryimage=["assets/images/maindp.jpg",
      "assets/images/strl.jpeg",
      "assets/images/reelpic.jpeg",
      "assets/images/prpic.jpeg",
      "assets/images/tgg.jpg"];

  final List postnam = [
    "theclutchless",
    "Strell",
    "Babz",
    "PistonAddicts",
  ];
final List postimages=[
  "assets/images/pst.jpg",
  "assets/images/strl.jpeg",
  "assets/images/babz.jpeg",
  "assets/images/reelpic.jpeg",

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: GoogleFonts.lobster(color: Colors.black, fontSize: 30),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Image(
                      width: 24,
                      image: AssetImage("assets/icons/chat.png"))
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            ///stories
            SizedBox(height: 14),
            Container(
                height: 150,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Stories(text: stryname[index], image: stryimage[index]);
                    })),

            ///posts
            Expanded(
              child: ListView.builder(
                  itemCount: postnam.length,
                  itemBuilder: (context, index) {
                    return Posts(postname: postnam[index], postimage: postimages[index]);
                  }),
            ),
          ],
        ));
  }
}
