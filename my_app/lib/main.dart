import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
