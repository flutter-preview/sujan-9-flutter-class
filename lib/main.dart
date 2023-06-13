import 'package:classdemo/buttons.dart';
import 'package:classdemo/homepage.dart';
import 'package:classdemo/style.dart';
import 'package:classdemo/textfield.dart';
import 'package:flutter/material.dart';

import 'containerbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const ContainerButton(),
    );
  }
}

