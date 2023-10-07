import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.grey),
    debugShowCheckedModeBanner: false,
    home: MainInsta(),
  ));
}

class MainInsta extends StatelessWidget {
  const MainInsta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: HomeInsta(),
    );
  }
}
