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
          child: ListView(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/12),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(child: Text('Tinder 골드로 업그레이드하면\n내가 받은 LIKE를 볼 수 있어요', style:TextStyle(fontSize:16))),
              ),
              Container(
                padding:EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height-150,
                width: MediaQuery.of(context).size.width,
                child:Center(
                  child:Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for(int i=0;i<10;i++)
                        Container(
                          padding:EdgeInsets.all(5),
                          height: 250,
                          width: MediaQuery.of(context).size.width/2.2,
                          decoration: BoxDecoration(
                            color:Colors.grey,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3.0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom:10,
                                left:5,
                                child: Icon(Icons.local_fire_department_rounded, color:Colors.lightGreenAccent, size:18)
                              ),
                              Positioned(
                                bottom:10,
                                left:25,
                                child: Text('최근 활동 기준',style: TextStyle(color:Colors.white)),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                )
              ),
            ],
          )
        ),
      floatingActionButton: InkWell(
        child: Container(
          height: 60,
          margin: EdgeInsets.all(40),
          decoration: BoxDecoration(
            color:Colors.orangeAccent[100],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color:Colors.black12,
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Center(child: Text('내가 받은 LIKE 보기',style: TextStyle(color:Colors.white, fontSize:18, fontWeight: FontWeight.bold))),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
