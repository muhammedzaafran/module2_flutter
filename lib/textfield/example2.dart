import 'package:flutter/material.dart';

class TextfieldSample extends StatefulWidget {
  const TextfieldSample({super.key});

  @override
  State<TextfieldSample> createState() => _TextfieldSampleState();
}

class _TextfieldSampleState extends State<TextfieldSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("TEXT FIELD SAMPLE"),
        centerTitle: true,
      ),

      body: Container(
        alignment: Alignment.center,
        child: const Column(
          children: [
            Text("LOGIN HERE", style: TextStyle(
              fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, fontSize: 23,
          height: 5,

            ),
            ),
             Form(
                 child:SizedBox(
                   width: 100,
                 ) ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: "username"),
              style: TextStyle(fontSize: 14),keyboardType: TextInputType.name,

            ),
          ],
        ),
      ),
    );
  }
}
