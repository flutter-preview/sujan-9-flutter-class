import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 150,
              left: 100,
              child: Text('stack example')),
          ],
        ),
      ),
    );
  }
}