import 'package:classdemo/login-signupscreen/dashboard.dart';
import 'package:classdemo/login-signupscreen/signup.dart';
import 'package:classdemo/login-signupscreen/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void submit() {
    String email = emailController.text;
    String password = passwordController.text;
    if (email == 'admin' && password == 'admin') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const DashBoard()));
    }
    // else {

    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       backgroundColor: Colors.red,
    //       content: Text('Invalid email or password'),
    //     ),
    //  )
    //   ;}
    print(emailController.text);
    print(passwordController.text);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text('Login')),
              SizedBox(
                height: 20,
              ),
              Center(child: Text(' Welcome to login screen')),
              SizedBox(
                height: 90,
              ),
              Text('Login'),
              SizedBox(
                height: 5,
              ),
              TextField(
                  // onSubmitted: (value){
                  //   print(value);
                  //   if(value.isEmpty ){
                  //  ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //           backgroundColor: Colors.red,
                  //           content: Text('Please enter your email'),
                  //         ),
                  //       );
                  //   }
                  // },
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child:
                      ElevatedButton(onPressed: submit, child: Text('Login'))),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    child: Text('Sign up'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/background.png')
            ],
          ),
        ),
      ),
    ));
  }
}
