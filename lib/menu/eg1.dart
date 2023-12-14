import 'package:flutter/material.dart';

class MenuSample extends StatefulWidget {
  const MenuSample({super.key});

  @override
  State<MenuSample> createState() => _MenuSampleState();
}

class _MenuSampleState extends State<MenuSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Menu Sample"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: ListTile(
                  title: Text("Download"),
                  trailing: Icon(Icons.download),
                )),
                const PopupMenuItem(
                    child: ListTile(
                  title: Text("Download"),
                  trailing: Icon(Icons.download),
                )),
                const PopupMenuItem(child: Text("click")),
                const PopupMenuItem(child: Text("next"))
              ];
            },
          )
        ],
      ),
    );
  }
}
