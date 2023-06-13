import 'package:flutter/material.dart';

class StyelClass extends StatelessWidget {
  const StyelClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Style class'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 400,
          ),
          Text(
            'Style Class dsfhdhufds dfhdhfd fdfhdsjfd djkfdbsjfb',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              letterSpacing: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 200,
           // color: Colors.blue,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Text Button");
            },
          child: Text("Text Button dfdsdfdsf"),
          style: TextButton.styleFrom(
           
            backgroundColor: Colors.blue,
            elevation: 10,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
           
          ),
          ),
          
        ],
      ),
    );
  }
}
