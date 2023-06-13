import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Field'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextField(
                style: TextStyle(color: Colors.red, fontSize: 20.0),
                // obscureText: true,

                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  prefixIcon: Icon(Icons.mail),
                  hintText: 'Enter your name',
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              customTextField('Email', TextInputType.emailAddress,
                  const Icon(Icons.mail), const Icon(Icons.lock)),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Text Button");
                  },
                  child: const Text('Login Success')),
            ]),
      ),
    );
  }

  Widget customTextField(
    String labelText,
    TextInputType? keyboardType,
    Widget? prefix,
    Widget? suffix,
  ) {
    return TextField(
        keyboardType: keyboardType ?? TextInputType.text,
        enabled: true,
        textAlign: TextAlign.start,
        cursorColor: Colors.black,
        style: const TextStyle(
          letterSpacing: 1.5,
          color: Colors.black,
          // fontWeight: FontWeight.bold,
          fontSize: 18,
          fontFamily: 'Roboto',
        ),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 26, horizontal: 12),
          //suffix: suffix?? const Text(''),

          prefixIcon: prefix != null
              ? Container(
                  width: 50, // Adjust the width as needed
                  alignment: Alignment.center,
                  child: prefix,
                )
              : null,
          suffixIcon: suffix != null
              ? Container(
                  width: 50, // Adjust the width as needed
                  alignment: Alignment.center,
                  child: suffix,
                )
              : null,
          // prefix:prefix?? const Text(''),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              )),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              )),

          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.red,
            letterSpacing: 1.5,
            fontSize: 18,
            // fontWeight: FontWeight.bold),
          ),
        ));
  }
}
