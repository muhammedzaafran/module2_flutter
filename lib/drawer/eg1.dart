import 'package:flutter/material.dart';

class DrawerSample extends StatefulWidget {
  const DrawerSample({super.key});

  @override
  State<DrawerSample> createState() => _DrawerSampleState();
}

class _DrawerSampleState extends State<DrawerSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer sample"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      drawer: const Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              DrawerHeader(
                  child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.pink,
              )),
              ListTile(
                  title: Text("Name"),
                  leading: Icon(Icons.account_circle_rounded)),
            ],
          )),
    );
  }
}
