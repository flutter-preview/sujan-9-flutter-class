import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController _controller = TextEditingController();
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _controller ;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void validateEmail() {
    String email = _controller.text.trim();
    bool isValid = isEmailValid(email);
    setState(() {
      _hasError = !isValid;
    });
  }

  bool isEmailValid(String email) {
    // Regular expression pattern to validate email format
    String emailPattern =
        r'^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$';

    // Create a RegExp object with the email pattern
    RegExp regex = RegExp(emailPattern);

    // Check if the email matches the pattern
    return regex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter your email',
                hintText: 'example@example.com',
                errorText: _hasError ? 'Invalid email' : null,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: _hasError ? Colors.red : Colors.grey.shade400,),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _hasError = false;
                });
              },
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              onSubmitted: (value) {
                validateEmail();
              },
            ),
          ],
        ),
      ),
    );
  }
}
