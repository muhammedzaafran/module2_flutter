import 'package:flutter/material.dart';

class MyExpanded extends StatefulWidget {
  const MyExpanded({Key? key}) : super(key: key);

  @override
  State<MyExpanded> createState() => _MyExpandedState();
}

class _MyExpandedState extends State<MyExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              width: 200,
              child: const Center(
                child: Text(
                  'First widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 200,
                child: const Center(
                  child: Text(
                    'Second widget',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              height: 100,
              width: 200,
              child: const Center(
                child: Text(
                  'Third widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
