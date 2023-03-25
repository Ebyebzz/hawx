
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hinttext;
  CustomTextField({super.key, required this.hinttext});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:18),
      child: TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  const BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 2),    
        ),
        focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide:  const BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 2)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  const BorderSide(color:Color.fromARGB(255, 255, 255, 255),width: 2)  
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  const BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 2)  
        ), 
        hintText: hinttext,hintStyle:  TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 254, 246)),
      ),
                          ),
    );
  }
}