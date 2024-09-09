import 'package:flutter/material.dart';

//the main function is starting point to all flutter apps
//creating a widget seperately to place text in the center
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'I am Rich',
          ),
          backgroundColor: Colors.blue[200],
          centerTitle: true,
        ),
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Image(
            image:AssetImage('images/scene.png')
        ),
      ),
    ),
    ),
  );
}
