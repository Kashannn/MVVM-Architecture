import 'package:flutter/material.dart';
import 'package:mvvm/Utils/routes/routes_names.dart';
import 'package:mvvm/View/Login_Screen.dart';
import 'package:mvvm/View/Home_Page.dart';

import 'Utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}




