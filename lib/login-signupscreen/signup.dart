import 'package:classdemo/login-signupscreen/signup.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
             
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text('Sign up')),
                SizedBox(height: 20,),
                 Center(child: Text(' Welcome to Sign-Up screen')),
                  SizedBox(height: 90,),
                  Text('Sign Up'),
                  SizedBox(height: 5,),
                  TextField(
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    )
                  ),
                  SizedBox(height: 20,),
                   TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    )
                  ),
                  SizedBox(height: 20,),
                   Text('Password'),
                   SizedBox(height: 5,),
                   TextField(
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    )
                  ),
                  SizedBox(height: 20,),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: Text('Login'))),
                   SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text('Dont have an account?'),
                            TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
                            },
                            child: Text('Sign up'),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Image.asset('assets/background.png')
          
                 
              ],
            ),
          ),
        ),
      )
    );
  }
}