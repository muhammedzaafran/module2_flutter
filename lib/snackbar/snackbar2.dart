import 'package:flutter/material.dart';

void main() => runApp(const SnackBar2());

class SnackBar2 extends StatelessWidget {
  const SnackBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "S N A C K B A R D E M O",
    home : Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
        ("S N A C K B A R"),
          style: TextStyle(
            fontSize:35,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
      ),
      centerTitle: true,
    ),
      body: const SnackBarPage(),
    )
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: const ButtonStyle(
            textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 14)),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(Colors.black)),
        onPressed: () {
          final snackBar = SnackBar(
            backgroundColor: Colors.black,
              content: const Text(
                "No steam account found",
              ),
            action: SnackBarAction(label: "Retry",
                textColor: Colors.white,
                onPressed: () {

                },),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, child: const Text("Show steam account"),
      ),
    );
  }
}
