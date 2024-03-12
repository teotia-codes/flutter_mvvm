import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State <LoginScreen> createState() =>  LoginScreenState();
}

class  LoginScreenState extends State <LoginScreen> {
 TextEditingController email = TextEditingController();
 TextEditingController pass = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [
  Padding(
    padding: const EdgeInsets.all(30.0),
    child: TextFormField(
      controller: email,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.all(16),
        labelText: "Email",
        focusColor: Colors.black,
        prefixIcon: Icon(Icons.email_outlined)
    
      ),
    ),
  ),
  
  Padding(
    padding: const EdgeInsets.all(30.0),
    child: TextFormField(
      controller: email,
      decoration: const  InputDecoration(
        labelText: "Password",
        focusColor: Colors.black,
        prefixIcon: Icon(Icons.password_rounded)
    
      ),
    ),
  )
],
  ),
);
  } 
}