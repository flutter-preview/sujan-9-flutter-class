import 'package:classdemo/textfield.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Button'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 80.0, right: 20,top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
           GestureDetector(
            onTap: (){
              print('success');
            },
             child: Container(
              height: 60,
              width: 200,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Center(
                child: Text('Login',
                style: TextStyle(color: Colors.white,
                fontSize: 25,
                ),),
              ),
             ),
           ),
           SizedBox(height: 20,),
            InkWell(
              onTap: (){
                print('success from inkwell');
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> InputField()));
                

              },
              child: Container(
              height: 60,
              width: 200,
                       
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Center(
                child: Text('Register',
                style: TextStyle(color: Colors.white,
                fontSize: 25,
                ),),
              ),
                       ),
            )
         
            
          ],
        ),
      ),
    );
  }
}