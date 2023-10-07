import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/components/profile_stories.dart';
import 'package:instagram_ui/components/profilepic_widget.dart';
import 'package:instagram_ui/profile%20post,reels,tag/profilepost.dart';
import 'package:instagram_ui/profile%20post,reels,tag/profilereels.dart';
import 'package:instagram_ui/profile%20post,reels,tag/profiletag.dart';

class Profileinsta extends StatelessWidget {
  Profileinsta({super.key});

  final List name = [
    "🐺",
    "🤖",
    "👽",
    "📱",
    "❤️",
    "👾",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        ///top profile name and icons

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.lock),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11),
                    child: Text("aj.3.y"),
                  ),
                  FaIcon(
                    FontAwesomeIcons.angleDown,
                    size: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.add_box_outlined, size: 33),
                  SizedBox(width: 11),
                  Icon(Icons.menu, size: 33)
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///profile picture
                  ProfilePic(),

                  ///posts and followers
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '20',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '2,350',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '746',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      'Ajey',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Just a boy livin his life',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            ///buttons edit profile
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 15, right: 15, bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Edit Profile')),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Share Profile')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.person_add_outlined)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  itemCount: name.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                return ProfileStory(text: name[index]);
              }),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TabBar(tabs: [
                Tab(icon: Icon(Icons.grid_on_outlined)),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.film),
                ),
                Tab(
                  icon: Icon(Icons.person_pin_outlined),
                )
              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                ProfilePost(),
                ProfileReels(),
                ProfileTag(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
