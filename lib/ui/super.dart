import 'package:flutter/material.dart';

class Super extends StatefulWidget {
  @override
  _SuperState createState() => _SuperState();
}

class _SuperState extends State<Super> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(child:Text('super')),
        )
    );
  }
}
