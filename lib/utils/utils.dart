import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';


class Utils {



  static toastMessage(String message){
    
  }
  static  flushBarErrorMessage(String message, BuildContext context){
   showFlushbar(context: context, 
   flushbar: Flushbar(
    message: message,
    borderRadius: BorderRadius.circular(8),
    forwardAnimationCurve: Curves.decelerate,
    margin: const EdgeInsets.symmetric(horizontal: 20,
    vertical: 10),
    padding: const EdgeInsets.all(12),
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.red,
    reverseAnimationCurve: Curves.easeOut,
    positionOffset: 20,
   )..show(context),
   ) ;
}

static fieldFocus(BuildContext context,FocusNode current , FocusNode next ){
  current.unfocus();
 FocusScope.of(context).requestFocus(next);
}
}

