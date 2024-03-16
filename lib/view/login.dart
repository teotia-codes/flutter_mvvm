import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/components/round_button.dart';
import 'package:flutter_mvvm/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State <LoginScreen> createState() =>  LoginScreenState();
}

class  LoginScreenState extends State <LoginScreen> {
 TextEditingController email = TextEditingController();
 TextEditingController pass = TextEditingController();
 FocusNode emailf = FocusNode();
 FocusNode passf = FocusNode();
 ValueNotifier<bool> obscureText = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: const Text('Login',style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 28),),
    centerTitle: true,
    backgroundColor: Colors.transparent,
  ),
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
children: [
  Padding(
    padding: const EdgeInsets.all(30.0),
    child: TextFormField(
      controller: email,
      focusNode: emailf,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.all(16),
        labelText: "Email",
        focusColor: Colors.black,
        prefixIcon: Icon(Icons.email_outlined)
    
      ),
      keyboardType: TextInputType.emailAddress,
      onFieldSubmitted: (value) {
        Utils.fieldFocus(context, emailf, passf);
      },
    ),
  ),
  
  ValueListenableBuilder(
    valueListenable: obscureText,
    builder: (context, value, child) {
      return  Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
        focusNode: passf,
        controller: pass,
        obscureText: obscureText.value,
        decoration:  InputDecoration(
          labelText: "Password",
          focusColor: Colors.black,
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: InkWell(
            onTap: (){
              obscureText.value = !obscureText.value;
            },
            child: obscureText.value ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)),
      
        ),
      ),
    );
    },
  ),
const SizedBox(height: 10,),
RoundButton(title: 'Login', onPress: (){
if(email.text.isEmpty){
  Utils.flushBarErrorMessage('Please enter email', context);
}

else if(pass.text.isEmpty){
  Utils.flushBarErrorMessage('Please enter pass', context);
}

else if(pass.text.length <6){
  Utils.flushBarErrorMessage('Please enter 6 digit pass', context);
}
else{
  ElevatedButton(onPressed: () {}, child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Colors.black
    ),
    child:const  Text(
"MBA - CHAIWALA"
    ),
    
  ));
}
})

],
  ),
);
  } 
}