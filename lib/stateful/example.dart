import 'package:flutter/material.dart';

class example extends StatefulWidget {
  const example({super.key});

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconButton(
        onPressed: () {
          setState(() {
            
          });
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}