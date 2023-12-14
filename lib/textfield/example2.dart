import 'package:flutter/material.dart';

class TextfieldSample extends StatefulWidget {
  const TextfieldSample({super.key});

  @override
  State<TextfieldSample> createState() => _TextfieldState();
}

class _TextfieldState extends State<TextfieldSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("TEXT FIELD SAMPLE"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const Text(
            "LOGIN HERE",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          Form(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(30),
                    prefixIcon: const Icon(Icons.person),
                    label: const Text("username"),
                    hintText: "username here",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
