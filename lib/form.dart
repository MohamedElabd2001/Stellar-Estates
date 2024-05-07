import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int? _groupValue = 0;
  bool? _checkBoxValue = false;
  RangeValues ranges = const RangeValues(10, 150);
  RangeLabels labels = const RangeLabels("Start", "End");
  double _slideValue = 0;
  int _step = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("TextField",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "with Border",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child:
              Text("Radio", style: Theme.of(context).textTheme.headlineSmall),
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(
                      groupValue: _groupValue,
                      value: 0,
                      onChanged: (dynamic t) {
                        setState(() {
                          _groupValue = t;
                        });
                      },
                    ),
                    Text("Male")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      groupValue: _groupValue,
                      value: 1,
                      onChanged: (dynamic t) {
                        setState(() {
                          _groupValue = t;
                        });
                      },
                    ),
                    Text("Female")
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Checkbox",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (t) {
                    setState(() {
                      _checkBoxValue = t;
                    });
                  },
                  value: _checkBoxValue,
                ),
                Text("MEMORY")
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Range Slider",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            SizedBox(height: 10.0),
            RangeSlider(
              onChanged: (RangeValues t) {
                setState(() {
                  ranges = t;
                  labels = RangeLabels(t.start.toString(), t.end.toString());
                });
              },
              labels: labels,
              values: ranges,
              min: 10,
              max: 150,
              divisions: 10,
              inactiveColor: Colors.grey,
              activeColor: Colors.red,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Switch",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Row(
              children: <Widget>[
                Switch(
                  onChanged: (t) {
                    setState(() {
                      _checkBoxValue = t;
                    });
                  },
                  value: _checkBoxValue!,
                ),
                Text("multipart")
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Slider",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            Slider(
              onChanged: (t) {
                setState(() {
                  _slideValue = t;
                });
              },
              value: _slideValue,
              min: 0,
              label: "$_slideValue",
              max: 100,
              divisions: 10,
              inactiveColor: Colors.grey,
              activeColor: Colors.red,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Steeper",
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            SizedBox(
              height: 400.0,
              child: Stepper(
                onStepContinue: () {
                  setState(() {
                    if (_step >= 0) if (_step < 2) _step++;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (_step > 0) _step--;
                  });
                },
                currentStep: _step,
                type: StepperType.horizontal,
                steps: [
                  Step(
                    content: Text("Some Content"),
                    title: Text("Page 1"),
                    isActive: _step == 0 ? true : false,
                  ),
                  Step(
                    content: Text("Some Content"),
                    title: Text("Page 2"),
                    state: _step == 2 ? StepState.editing : StepState.complete,
                    isActive: _step == 1 ? true : false,
                  ),
                  Step(
                    content: Text("Some Content"),
                    title: Text("Page 3"),
                    isActive: _step == 2 ? true : false,
                  ),
                ],
              ),
            ),
          ],
        ),
       );
    }
}