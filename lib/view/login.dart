import 'package:flutter/material.dart';
import 'package:flutter_mvvm/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State <LoginScreen> createState() =>  LoginScreenState();
}

class  LoginScreenState extends State <LoginScreen> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [
  InkWell(
    onTap: () {
      Utils.flushBarErrorMessage('Error occured', context);
    },
    child:const Center(child: Text("Click ME")),
  )
],
  ),
);
  } 
}