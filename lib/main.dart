import 'package:flutter/material.dart';
import 'package:routes_3/cuatro.dart';
import 'package:routes_3/tres.dart';
import 'package:routes_3/uno.dart';

import 'dos.dart';
import 'home page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings){
        switch(settings.name){
          case '/':
            return MaterialPageRoute(builder: (context) => HomePage());
            break;
          case '/uno':
            return MaterialPageRoute(builder: (context) => Uno());
            break;
          case '/dos':
            return MaterialPageRoute(builder: (context) => Dos());
            break;
          case '/tres':
            return MaterialPageRoute(builder: (context) => Tres());
            break;
          case '/cuatro':
            return MaterialPageRoute(builder: (context) => Cuatro());
            break;
          default:
            return null;
        }
      },
    );
  }
}
