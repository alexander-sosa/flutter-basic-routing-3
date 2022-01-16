import 'package:flutter/material.dart';

class Cuatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(title: Text('Cuatro Page'),),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('Volver...')
        ),
      ),
    );
  }
}
