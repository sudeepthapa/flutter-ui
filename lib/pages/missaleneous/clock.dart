import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class Clock extends StatelessWidget {
  const Clock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: AnalogClock(
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: Colors.black),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 20,
                  spreadRadius: 10)
            ],
            shape: BoxShape.circle,
          ),
          width: 200.0,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          showSecondHand: false,
          isLive: true,
          numberColor: Colors.black,
          showNumbers: true,
          textScaleFactor: 1.2,
          showTicks: true,
          showDigitalClock: false,
          datetime: DateTime.now(),
        ),
      ),
    );
  }
}
