import 'package:flutter/material.dart';

class Uno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: Text('Uno Page'),),
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