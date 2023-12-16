import 'package:flutter/material.dart';

class CheckBoxSample extends StatefulWidget {
  const CheckBoxSample({super.key});

  @override
  State<CheckBoxSample> createState() => _CheckBoxSampleState();
}

class _CheckBoxSampleState extends State<CheckBoxSample> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;
  bool _checkboxListTile1 = false;
  bool _checkboxListTile2 = false;
  var data = 'Data is shown here';

  void updateData() {
    setState(() {
      data = 'Selected checkboxes: ';
      if (_checkbox1) {
        data += 'Male ';
      } else if (_checkbox2) {
        data += 'Female ';
      } else if (_checkbox3) {
        data += 'Others ';
      } else if (_checkboxListTile1) {
        data += 'Men ';
      } else if (_checkboxListTile2) {
        data += 'Female ';
      } else {
        data += 'None selected';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check box sample"),
      ),
      body: Container(
          child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                focusColor: Colors.red,
                autofocus: true,
                checkColor: Colors.yellowAccent,
                activeColor: Colors.black,
                value: _checkbox1,
                onChanged: (value) {
                  setState(() {
                    _checkbox1 = !_checkbox1;
                  });
                },
              ),
              const Text('Male'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                focusColor: Colors.red,
                autofocus: false,
                checkColor: Colors.yellowAccent,
                activeColor: Colors.black,
                value: _checkbox2,
                onChanged: (value) {
                  setState(() {
                    _checkbox2 = !_checkbox2;
                  });
                },
              ),
              const Text('Female'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                focusColor: Colors.red,
                autofocus: true,
                checkColor: Colors.yellowAccent,
                activeColor: Colors.black,
                value: _checkbox3,
                onChanged: (value) {
                  setState(() {
                    _checkbox3 = !_checkbox3;
                  });
                },
              ),
              const Text('Others')
            ],
          ),
          const Text("Select gender [Checkbox List tile]",
              style: TextStyle(fontWeight: FontWeight.bold)),
          CheckboxListTile(
            title: const Text("Men"),
            subtitle: const Text("more datas"),
            value: _checkboxListTile1,
            onChanged: (value) {
              setState(() {
                _checkboxListTile1 = !_checkboxListTile1;
              });
            },
          ),
          CheckboxListTile(
            title: const Text("Female"),
            subtitle: const Text("more datas"),
            value: _checkboxListTile2,
            onChanged: (value) {
              setState(() {
                _checkboxListTile2 = !_checkboxListTile2;
              });
            },
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              updateData();
            });
          }, child: const Text("Update data")),
          SizedBox(
            height: 30,
          ),
          Text(data)
        ],
      )),
    );
  }
}
