import 'package:flutter/material.dart';

class MadeApp extends StatefulWidget {
  const MadeApp({super.key});

  @override
  State<MadeApp> createState() => _TextfieldState();
}

class _TextfieldState extends State<MadeApp> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: ListTile(
                  title: Text("Settings"),
                  trailing: Icon(Icons.settings),
                )),
                const PopupMenuItem(
                    child: ListTile(
                  title: Text("logout"),
                  trailing: Icon(Icons.logout),
                )),
              ];
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text("SampleApp"),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(50),
        child: Column(children: [
          const Text(
            "HIGH TABLE",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                backgroundColor: Colors.pink),
          ),
          const SizedBox(
            height: 18,
          ),
          Form(
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text("input username"),
                        hintText: "username here",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: passwordVisible,
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text("input password"),
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
