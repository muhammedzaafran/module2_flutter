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
        alignment: Alignment.center, margin: const EdgeInsets.all(50),
        child: Column(children: [
          const Text(
            "LOGIN HERE",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          SizedBox(
            height: 10,
          ),
          Form(
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text("username"),
                        hintText: "username here",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text("password"),
                        hintText: "password here",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
