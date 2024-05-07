import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderRadio extends StatefulWidget {
  @override
  _GenderRadioState createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadio> {
  int _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Interested in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        Row(
          children: <Widget>[
            Radio(
              groupValue: _groupValue,
              value: 0,
              onChanged: (int? value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            Text("Buying"),
          ],
        ),
        Row(
          children: <Widget>[
            Radio(
              groupValue: _groupValue,
              value: 1,
              onChanged: (int? value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            Text("Selling"),
          ],
        ),Row(
          children: <Widget>[
            Radio(
              groupValue: _groupValue,
              value: 2,
              onChanged: (int? value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
            Text("Renting"),
          ],
        ),
      ],
    );
  }
}
