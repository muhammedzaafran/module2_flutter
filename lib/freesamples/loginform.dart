import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _TextfieldState();
}

class _TextfieldState extends State<LoginForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _loginForm = GlobalKey<FormState>();
  bool passwordVisible = false;
  String name = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          " L O G I N  F O R M ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(50),
        child: Column(children: [
          const Text(
            "L O G I N",
            style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Form(
            key: _loginForm,
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your email";
                      } else if (!value.contains("@gmail")) {
                        return "please enter a valid email";
                      } else {
                        return null;
                      }
                    },
                    controller: _nameController,
                    cursorColor: Colors.green,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        prefixIcon: const Icon(Icons.person),
                        label: const Text("Email"),
                        hintText: "input email",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$');
                      if (value!.isEmpty) {
                        return "Please enter your password";
                      } else {
                        if (!regex.hasMatch(value)) {
                          return 'please enter a valid password';
                        } else {
                          return null;
                        }
                      }
                    },
                    controller: _passwordController,
                    obscureText: passwordVisible,
                    cursorColor: Colors.black,
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
                        final snackBar = SnackBar(
                          backgroundColor: Colors.black,
                          content: const Text(
                            "fail to loginN",
                          ),
                          action: SnackBarAction(
                            label: "Retry",
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackBar);
                        if (_loginForm.currentState!.validate()) {
                          setState(() {
                            name = _nameController.text;
                            password = _passwordController.text;

                          });
                        }
                      },
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child: const Text("login")),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
