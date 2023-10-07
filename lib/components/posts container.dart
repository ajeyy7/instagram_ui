import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatelessWidget {
  const Posts({super.key, required this.postname, required this.postimage});

  final String postname;
  final String postimage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8,left: 8,right: 8,top: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ///post profile pic
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/insta,dp post.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  postname,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
           const Image(
               width: 24,
               image: AssetImage("assets/icons/kebabicon.png"))
          ]),
        ),

        ///post
        Container(
          height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
    image: AssetImage(postimage))
        ),
         // color: Colors.blueGrey.shade100,
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border, size: 28),
                  SizedBox(width: 7),
                  Image(
                      width: 24,
                      image: AssetImage("assets/icons/comments.png")),
                  SizedBox(width: 7),
                  Image(
                      width: 24,
                      image: AssetImage("assets/icons/send.png"))
                ],
              ),
              Icon(Icons.bookmark, size: 28)
            ],
          ),
        ),

        ///liked by
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Text("Liked by"),
              Text(
                " anxnd",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and"),
              Text(
                "133 Others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: RichText(
              text: const TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(text: "Clutchless",style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    "The road may be long and winding, but with brothers by your side, it becomes an unforgettable adventure"),
          ])),
        ),
      ],
    );
  }
}
