import 'package:flutter/material.dart';

import '../Resourcess/Components/round-button.dart';
import '../Utils/routes/routes_names.dart';
import '../Utils/utils.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  focusNode: emailFocusNode,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  onFieldSubmitted: (value) {
                    Utils.fieldFocusChange(
                        context, emailFocusNode, passwordFocusNode);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  focusNode: passwordFocusNode,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundButton(
                  title: 'Login',
                  onPressed: () {
                    Utils().flashBarErrorMessage('Login Button Pressed', context);
                     Navigator.pushNamed(context, RoutesName.home);
                  },
                ),

              ],
            ),
          ),
        ));
  }
}
