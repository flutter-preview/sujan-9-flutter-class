import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Column(
                  
                  children: [
                    const Text('Welcome ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 25,),
                    const Text('Welcome to Flutter Class',),
                    const SizedBox(height: 20,),
                    Image.asset('assets/welcome.png'),
                    SizedBox(height: 30,),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                         shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                           width: 0.5),
                           borderRadius: BorderRadius.circular(25),
                           
                         ),
                          
                         
                        ),
                        onPressed: (){
                          
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePageScreen()));
                      }, child: const Text('Login',
                      style: TextStyle(color: Colors.black,
                      )),)),
                      SizedBox(height: 20,),
                      SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                         shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 1),
                           borderRadius: BorderRadius.circular(20),
                           
                         ),
                          
                         
                        ),
                        onPressed: (){
                          
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePageScreen()));
                      }, child: const Text('Login',
                      style: TextStyle(color: Colors.white,
                      )),)),
                    
                     
                  ],
                ),
              ),
            ),
          )
          // body:  ,
          ),
    );
  }
}
