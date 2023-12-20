import 'package:flutter/material.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
          "S E T T I N G S  P A G E",
        style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 15,
      ),
    ));
  }
}
