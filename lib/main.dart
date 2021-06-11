import 'package:flutter/material.dart';
import 'package:tinder/ui/chat.dart';
import 'package:tinder/ui/home.dart';
import 'package:tinder/ui/profile.dart';
import 'package:tinder/ui/super.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Widget> navigator = [Home(), Super(), Chat(), Profile()];
  final dynamic navIcon = [ Icons.bubble_chart_rounded, Icons.auto_awesome, Icons.chat_bubble, Icons.person_rounded];
  int selectedTab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Container(
          padding:EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.width/5,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
              for(int i=0;i<4;i++)
                InkWell(
                  child: Container(
                      width: 70,
                      height: 70,
                      child:Stack(
                        children: [
                          Positioned(
                            top:23,
                            left:23,
                            child: Icon(navIcon[i], color:i==selectedTab?Colors.pinkAccent:Colors.grey),
                          ),
                          Positioned(
                            top:18,
                            left:50,
                            child: Text('99', style:TextStyle(fontSize: 12)),
                          )
                        ],
                      )
                  ),
                  onTap: (){
                    setState(() {
                      selectedTab=i;
                    });
                  },
                )
            ],
          )
      ),
      body: SafeArea(
        child: navigator[selectedTab],
      )
    );
  }
}
