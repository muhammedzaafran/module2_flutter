import 'package:flutter/material.dart';

class OzilImage extends StatefulWidget {
  const OzilImage({super.key});

  @override
  State<OzilImage> createState() => _OzilImageState();
}

class _OzilImageState extends State<OzilImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arsenal FC"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Arsenal FC", style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: () {
                print("MESUT OZIL");
              },
            child: Container(
              height: 500,
              width: 700,
              child: const Image(image: AssetImage('assets/images/mesut.jpg')),
            ),
            )
          ],
        ),
      ),
    );
  }
}
