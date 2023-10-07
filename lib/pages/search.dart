import 'package:flutter/material.dart';
import 'package:instagram_ui/components/search%20box.dart';

class SearchInsta extends StatelessWidget {
  const SearchInsta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.search_outlined),
                  SizedBox(width: 9),
                  Text("Search")
                ],
              ),
            ),
          )),
      body: const SearchBox(),
    );
  }
}
