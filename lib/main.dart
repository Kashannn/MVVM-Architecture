import 'package:flutter/material.dart';
import 'package:mvvm/Utils/routes/routes_names.dart';
import 'package:mvvm/View/Login_Screen.dart';
import 'package:mvvm/View/Home_Page.dart';
import 'package:provider/provider.dart';

import 'Utils/routes/routes.dart';
import 'View-Model/User_ViewModel.dart';
import 'View-Model/auth_viewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
        ChangeNotifierProvider(create: (context) => UserViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RoutesName.login,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
