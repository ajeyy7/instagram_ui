import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/components/add%20pics.dart';
import 'package:instagram_ui/components/search%20box.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.multiply,
                  color: Colors.black,
                  size: 35,
                ),
                SizedBox(width: 20),
                Text("New Post"),
              ],
            ),
            Text(
              "Next",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
      body: AddPics(),
    );
  }
}
