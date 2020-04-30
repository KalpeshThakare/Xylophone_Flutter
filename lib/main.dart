import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildWidget(widgetColor: Colors.red, number: 1),
              buildWidget(widgetColor: Colors.orange, number: 2),
              buildWidget(widgetColor: Colors.yellow, number: 3),
              buildWidget(widgetColor: Colors.green, number: 4),
              buildWidget(widgetColor: Colors.teal, number: 5),
              buildWidget(widgetColor: Colors.blue, number: 6),
              buildWidget(widgetColor: Colors.purple, number: 7),
            ],
          )),
        ),
      );
  void playAudio({int number}) => player.play('note$number.wav');

  Expanded buildWidget({Color widgetColor, int number}) => Expanded(
        child: FlatButton(
          child: Text('Sound $number'),
          splashColor: Colors.transparent,
          color: widgetColor,
          onPressed: () {
            playAudio(number: number);
          },
        ),
      );
}
