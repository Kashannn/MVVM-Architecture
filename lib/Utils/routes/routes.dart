

import 'package:flutter/material.dart';
import 'package:mvvm/Utils/routes/routes_names.dart';

import '../../View/Home_Page.dart  ';
import '../../View/Login_Screen.dart';

class Routes{
  static MaterialPageRoute generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.login:
        return MaterialPageRoute(builder: (_) => const Login_Screen());

      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}