import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Widget With MediaQuery")),
      body: Center(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Green',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              // height: 200,
              // width: 200,
              color: Colors.green,
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 2,
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                "Red",
                style: TextStyle(color: Colors.white),
              ),
              // height: 200,
              // width: 200,
              color: Colors.red,
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 5,
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Blue',
                style: TextStyle(color: Colors.white),
              ),
              // height: 200,
              // width: 200,
              color: Colors.blue,
            ),
          ),
        ],
      )),
    );
  }
}
