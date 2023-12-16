import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MadeApp extends StatefulWidget {
  const MadeApp({super.key});

  @override
  State<MadeApp> createState() => _TextfieldState();
}

class _TextfieldState extends State<MadeApp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool passwordVisible = false;
  String name = '';
  String password = '';
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
        title: const Text(
          "WELCOME",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(50),
        child: Column(children: [
          GradientText(
            'HIGH TABLE',
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black,
            ),
            colors: const [
              Colors.pink,
              Colors.red,
              Colors.teal,
            ],
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
                    controller: _nameController,
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text("username"),
                        hintText: "input username",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _passwordController,
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
                        label: const Text("password"),
                        hintText: "input password",
                        hintStyle: const TextStyle(fontSize: 4),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          name = _nameController.text;
                          password = _passwordController.text;
                        });
                      },
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child: const Text("login")),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        "Name : $name                 Password : $password ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
