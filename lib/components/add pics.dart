import 'package:flutter/material.dart';
class AddPics extends StatelessWidget {
  const AddPics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/tree.jpg")),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Recent",style: TextStyle(fontSize: 20),),
              ),

              decoration: BoxDecoration(
                  color: Colors.white60
              ),
            ),
            

            Container(
              height: 350,
              child: GridView.builder(
              itemCount: 6,
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
                        image: AssetImage("assets/images/instdp.jpg"))),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
