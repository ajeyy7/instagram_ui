import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/add%20insta.dart';
import 'package:instagram_ui/pages/homeone.dart';
import 'package:instagram_ui/pages/profile.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';

class HomeInsta extends StatefulWidget {
  const HomeInsta({super.key});

  @override
  State<HomeInsta> createState() => _HomeInstaState();
}

class _HomeInstaState extends State<HomeInsta> {
  int selectedindex = 0;
  final List<Widget> children = [
    MainHome(),
    SearchInsta(),
    AddPost(),
    Reels(),
    Profileinsta(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 34,
        currentIndex: selectedindex,
        onTap: navigatebottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Image(
              width: 28,
              image: AssetImage("assets/icons/home.png")), label: 'Home'),
          BottomNavigationBarItem(icon: Image(
              width: 28,
              image: AssetImage("assets/icons/search.png")) ,label: 'search'),
          BottomNavigationBarItem(
              icon: Image(
                  width: 28,
                  image: AssetImage("assets/icons/add.png")), label: 'add'),
          BottomNavigationBarItem(
              icon: Image(
                width: 28,
                  image: AssetImage("assets/images/instagram-reels-icon.png",)),
              label: 'Reels'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage("assets/images/maindp.jpg"),
              ),
              label: 'profile')
        ],
      ),
    );
  }

  void navigatebottomBar(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
