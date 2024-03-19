import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen App'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              // Add functionality for forget password
            },
            child: Text(
              'Forget Password?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Login'),
            
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Does not have an account?"),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
