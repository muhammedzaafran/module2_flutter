import 'package:flutter/material.dart';

class FormFieldSample extends StatefulWidget {
  const FormFieldSample({super.key});

  @override
  State<FormFieldSample> createState() => _FormFieldSampleState();
}

class _FormFieldSampleState extends State<FormFieldSample> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool passwordVisible = false;
  final _loginForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("Form Sample"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Student Form",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Form(
                  key: _loginForm,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: Colors.green,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your email";
                            } else if (!value.contains("@gmail")) {
                              return "please enter a valid email";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _nameController,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
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
                          obscureText: passwordVisible,
                          cursorColor: Colors.green,
                          keyboardType: TextInputType.visiblePassword,
                          controller: _passwordController,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              prefixIcon: const Icon(Icons.password),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              label: const Text("Password"),
                              hintText: "input password",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_loginForm.currentState!.validate()) {

                            }
                          },
                          child: const Text("Submit"))
                    ],
                  ))
            ]),
      ),
    );
  }
}
