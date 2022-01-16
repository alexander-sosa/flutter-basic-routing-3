import 'dart:math';

import 'package:flutter/material.dart';
import 'package:routes_3/transitions.dart';
import 'package:routes_3/tres.dart';
import 'package:routes_3/uno.dart';

import 'cuatro.dart';
import 'dos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    List<double> vAng = [0, 2*pi];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Home Page'),),
        body: Stack(
          children: <Widget>[

            Center(
              child:TweenAnimationBuilder(
                duration: Duration(milliseconds: 1000),

                // mide rotacion en pi radianes
                tween: Tween<double>(begin: vAng[pos], end: vAng[(pos + 1) % 2] ),

                builder: (BuildContext context, double value, Widget child) {
                  return Transform.rotate(
                    angle: value,
                    child: Container(
                      height: 300,
                      width: 300,
                      //color: Colors.redAccent,
                      child: Stack(
                        children: [
                          widgetGeneric(0, -1, 100, 100, Colors.pink[100], Colors.pink[900], '1', "/uno"),
                          widgetGeneric(1, 0, 100, 100, Colors.teal[100], Colors.teal[900], '2',"/dos"),
                          widgetGeneric(0, 1, 100, 100, Colors.amber[100], Colors.amber[900], '3', "/tres"),
                          widgetGeneric(-1, 0, 100, 100, Colors.blue[100], Colors.blue[900], '4', "/cuatro"),

                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ) ,
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.animation),
            onPressed: (){
              setState(() {
                pos = (pos + 1) % 2;
              });
            }
        ),
      ),
    );
  }

  Widget widgetGeneric(double x, double y, double w, double h, col1, col2, String msg, String namePush) {
    return Align(
      alignment: Alignment(x, y),
      child: Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: RadialGradient(colors: [col1, col2])
            ),

            child: FlatButton(
                onPressed: (){
                  //Navigator.pushNamed(context, namePush);
                  switch(namePush){
                    case '/uno':
                    Navigator.push(context, SlideRoute(page: Uno()));
                    break;
                    case '/dos':
                    Navigator.push(context, ScaleRoute(page: Dos()));
                    break;
                    case '/tres':
                    Navigator.push(context, RotationRoute(page: Tres()));
                    break;
                    case '/cuatro':
                    Navigator.push(context, SizeRoute(page: Cuatro()));
                    break;
                  }
                },

                child: Center(child: Text(msg, style: TextStyle(fontSize: 30),))
            )
        ),
    );
  }

  Widget firstHP(){
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/uno');
              },
              child: Text('Go to Page One...'),
              color: Colors.amber,
                  ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/dos');
              },
              child: Text('Go to Page Two...'),
              color: Colors.amber,
            )

          ],
        )
    );
  }
}
