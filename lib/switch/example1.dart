import 'package:flutter/material.dart';

void main() => runApp(SwitchSample());

class SwitchSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text("S W I T C H  S A M P L E", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          body: Center(
              child: SwitchScreen()
          ),
        )
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'WI-FI ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'WI-FI OFF';
      });
      print('Switch Button is OFF');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Transform.scale(
            scale: 2,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.white,
              activeTrackColor: Colors.black,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.black,
            )
        ),
          Text('$textValue', style: TextStyle(fontSize: 20),)
        ]);
  }
}