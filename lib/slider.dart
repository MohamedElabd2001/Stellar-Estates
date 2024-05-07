import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _slideValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Budget",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        SizedBox(height: 4,),
        Text(
          '${_slideValue.round()},000,000 EGP',
          style: TextStyle(fontSize: 45),
        ),
        SizedBox(height: 4,),
        Slider(
          onChanged: (t) {
            setState(() {
              _slideValue = t;
            });
          },
          value: _slideValue,
          min: 0,
          max: 100,
          divisions: 20,
          inactiveColor: Colors.grey,
          activeColor: Color(0xff000747),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(21, (index) {
            final value = index * 5;
            return Positioned(
              left: (MediaQuery.of(context).size.width - 32) / 20 * index,
              child: Text(
                '$value m',
                style: TextStyle(fontSize: 12),
              ),
            );
          }),
        ),
      ],
    );
  }
}
