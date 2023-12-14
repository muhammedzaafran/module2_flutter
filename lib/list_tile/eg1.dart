import 'package:flutter/material.dart';

class ListTileSample extends StatefulWidget {
  const ListTileSample({super.key});

  @override
  State<ListTileSample> createState() => _ListTileSampleState();
}

class _ListTileSampleState extends State<ListTileSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("List tile Sample"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 100,
                width: 350,
                child: const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Anu"),
                  subtitle: Text("Hi anu how are you"),
                  trailing: Text("4:00 pm"),
                ),
              )
            ],
          )),
    );
  }
}
