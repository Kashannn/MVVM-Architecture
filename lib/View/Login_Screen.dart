import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Resourcess/Components/round-button.dart';
import '../Utils/routes/routes_names.dart';
import '../Utils/utils.dart';
import '../View-Model/auth_viewModel.dart';

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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final authViewModel = Provider.of<AuthViewModel>(context);
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
                  controller: emailController,
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
                  controller: passwordController,
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
                    if (emailController.text.isEmpty) {
                      Utils()
                          .flashBarErrorMessage('Please fill Email', context);
                    } else if (passwordController.text.isEmpty) {
                      Utils().flashBarErrorMessage(
                          'Please fill Password', context);
                    } else if (passwordController.text.length < 6) {
                      Utils().flashBarErrorMessage(
                          'Password must be at least 6 characters', context);
                    } else {
                      Map data = {
                        'email': emailController.text,
                        'password': passwordController.text,
                      };
                      authViewModel.loginApi(data, context);
                      print('Api Hit');
                    }
                  },
                ),
                SizedBox(height: height * 0.1),
                InkWell(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.singUp);
                  }
                ),
              ],
            ),
          ),
        ));
  }
}
