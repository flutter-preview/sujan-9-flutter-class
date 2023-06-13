import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Types'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            TextButton(
              
              onPressed: (){print('Text Button Clicked');},


               child: const Text('Text Button'),),
               SizedBox(
                 height: 10,
               ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Elevated Button'),
                ),
                SizedBox(
                  height: 10,
                ),
                IconButton(
                  onPressed: null,
                   icon: Icon(Icons.mail),
                   ),
          ],
        ),
      ),
    );
  }
}