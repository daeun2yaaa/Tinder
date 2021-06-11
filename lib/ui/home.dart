import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var fabName = ['back','delete','super','like','boost'];
  var fabColor = [Colors.orangeAccent, Colors.redAccent, Colors.blueAccent, Colors.lightGreen, Colors.deepPurpleAccent];
  var fabIcon = [Icons.settings_backup_restore_sharp, Icons.close_outlined, Icons.star, Icons.favorite, Icons.wb_incandescent_outlined];
  var fabSize = [30, 35, 30, 35, 30];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:Column(
              children:[
                SizedBox(height: MediaQuery.of(context).size.height/12),
                Container(
                    padding: EdgeInsets.all(7),
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
                                          Container(
                                            width: MediaQuery.of(context).size.width-110,
                                            child: Wrap(
                                              children: [
                                                for(int i=0;i<10;i++)
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
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                              )
                          ),
                          Positioned(
                              right:20,
                              bottom:40,
                              child: IconButton(
                                icon: Icon(Icons.info, size:38, color:Colors.white),
                                onPressed: (){
                                  print('자세히 보기 모달창');
                                },
                              )
                          )
                        ],
                      ),
                    )
                ),
                Container(
                    padding:EdgeInsets.symmetric(horizontal: 30),
                    height: MediaQuery.of(context).size.width/5,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i=0;i<5;i++)
                          Container(
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(50.0),
                              border: Border.all(
                                color: fabColor[i], //                   <--- border color
                                width: 0.5,
                              ),
                              // boxShadow: <BoxShadow>[
                              //   BoxShadow(
                              //     color:Colors.black12,
                              //     blurRadius: 10,
                              //   ),
                              // ],
                            ),
                            child:Icon(fabIcon[i], color:fabColor[i], size:fabSize[i].toDouble()),
                          ),
                      ],
                    )
                )
              ]
          ),
        )
    );
  }
}
