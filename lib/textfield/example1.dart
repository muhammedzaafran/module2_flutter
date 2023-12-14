import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({super.key});

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text field sample"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Login Form",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Form(
            child: SizedBox(
              width: 150,
              child: TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(30),
                    prefixIcon: const Icon(Icons.person),
                    label: const Text("Name"),
                    hintText: "Enter name",
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
