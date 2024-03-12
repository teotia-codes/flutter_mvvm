import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.title, this.loading = false, required this.onPress});
final String title;
final bool loading;
final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(color:const  Color.fromARGB(255, 177, 122, 228),
        borderRadius: BorderRadius.circular(8)),
        child: Center(child: Text(title,
        style:const  TextStyle(fontWeight: FontWeight.w500,
        color:  Color.fromARGB(255, 56, 0, 66)
        
        )
        ,)
        ),
      ),
    );
  }
}