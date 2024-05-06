import 'package:flutter/material.dart';

import '../Utils/routes/routes_names.dart';
import '../Utils/utils.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Utils.flashBarErrorMessage('Login Successful', context);

          },
          child: const Text('Go to Home Page'),
        ),
      )
    );
  }
}
