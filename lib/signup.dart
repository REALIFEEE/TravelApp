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
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: SizedBox(
                              height: 100.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hello $name',
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()));
                                      },
                                      child: const Text(
                                        'Next',
                                        style: TextStyle(fontSize: 18),
                                      ))
                                ],
                              ),
                            ),
                          );
                        });
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return HomePage();
                    // }));
                  },
                  child: const Text('submit'))
            ],
          ),
        ),
      ),
    );
  }
}
