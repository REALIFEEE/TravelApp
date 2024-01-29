import 'package:flutter/material.dart';
import 'package:travelapp/homepage.dart';
import 'package:travelapp/variables.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 

 // _SignUpState({this.name, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration:
                    const InputDecoration(hintText: 'name', labelText: 'name'),
                onChanged: (String value) {
                  name = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'password',
                  labelText: 'password',
                ),
                obscureText: true,
                onChanged: (String value) {
                  password = value;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                    // showDialog(
                    //     context: context,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         content: Text('Hello $name'),
                    //       );
                    //     });
                  },
                  child: const Text('submit'))
            ],
          ),
        ),
      ),
    );
  }
}
