import 'package:flutter/material.dart';
import 'package:flutter_mvvm/utils/routes/routes_name.dart';
import 'package:flutter_mvvm/view/home.dart';
import 'package:flutter_mvvm/view/login.dart';

class Routes {
   static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.home:
      return MaterialPageRoute(builder: (context) => HomeScreen(),);
      case RoutesName.login:
      return MaterialPageRoute(builder: (context)=> const LoginScreen() );
      default:
      return MaterialPageRoute(builder: (_){
        return const Scaffold(
          body: Center(
            child: Text("No route found"),
          ),
        );
      });
    }
   }
}