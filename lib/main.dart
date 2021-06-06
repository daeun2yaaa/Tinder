import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color:Colors.orangeAccent,
          margin: EdgeInsets.all(7),
          height: MediaQuery.of(context).size.height-200,
          child: GestureDetector(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      color:Colors.teal,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                ),
                Positioned(
                  top:7,
                  left: 10,
                  child: Container(
                    height: 4,
                    width: 100,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  )
                ),
                Positioned(
                  bottom:0,
                  child:Container(
                    height:MediaQuery.of(context).size.height/11,
                    width:MediaQuery.of(context).size.width-50,
                    color:Colors.greenAccent,
                    margin:EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text('name',style:TextStyle(fontSize:36,color:Colors.white)),
                                SizedBox(width: 7),
                                Text('24',style:TextStyle(fontSize:21,color:Colors.white)),
                                SizedBox(width: 7),
                                Icon(Icons.star),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                  margin:EdgeInsets.fromLTRB(0, 0, 5, 5),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color:Colors.black26,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Text('dog lover',style:TextStyle(fontSize:13,color:Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.info, size:38, color:Colors.white)
                      ],
                    )
                  )
                ),
              ],
            ),
          )
        )
      ),
    );
  }
}
