import 'package:flutter/material.dart';

class Tres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text('Tres Page'),),
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
