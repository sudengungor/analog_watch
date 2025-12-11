import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'dart:async';

class MyAnalogWatch extends StatefulWidget {
  const MyAnalogWatch({super.key});

  @override
  State<MyAnalogWatch> createState() => _MyAnalogWatchState();
}

class _MyAnalogWatchState extends State<MyAnalogWatch> {
  late DateTime _now;
  late Timer _timer;
  final player = AudioPlayer();
  

  @override
  void initState(){
    super.initState();
    _now = DateTime.now();
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      //player.play(AssetSource("sounds/click.mp3"));
      setState(() {
        _now = DateTime.now();
      });
    });
  }

  @override 
  void dispose(){
    _timer.cancel();
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text("ANALOG WATCH",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child:Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink,
            boxShadow: [
              BoxShadow(
                //color: Colors.black.withValues(alpha: 0.7),
                blurRadius: 25,
                spreadRadius: 5,
                offset: Offset(0, 10),
              )
            ]
          ),
        
        child: AnalogClock(
          dateTime: _now,
          dialColor: Colors.white,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          secondHandColor: Colors.red,
          hourNumberColor: Colors.black,
          dialBorderColor: Colors.black,
          centerPointColor: Colors.black,
          dialBorderWidthFactor: 0.09,
          isKeepTime: true,

          ),
        ),
      ),
    );
  }
}