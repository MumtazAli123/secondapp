import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My app"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Hello Karachi"),
        ),
      ),
    ));
