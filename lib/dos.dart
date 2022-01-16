import 'package:flutter/material.dart';

class Dos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Text('Dos Page'),),
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
