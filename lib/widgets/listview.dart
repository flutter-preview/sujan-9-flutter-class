import 'package:flutter/material.dart';

class Customview extends StatelessWidget {
  const Customview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                    'assets/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text('Title'),
                subtitle: Text('Subtitle'),
                trailing: Icon(Icons.arrow_forward_ios),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            );
          },
          )
        ),
    );
  }
}