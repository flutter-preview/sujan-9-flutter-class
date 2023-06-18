import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  
 
  
 String name = 'flutter class';
 int count = 0;
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Text( name + count.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            
          name = 'hello world';
           
          });
        },
        child: Center(child: Text('Click me')),
      ),
    );
  }
}