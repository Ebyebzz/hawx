import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  String buttontext;
  CustomElevatedButton({super.key,required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
                      onPressed: () { 
                     },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 41, 193, 10),
                        fixedSize: const Size(240, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                      ),
                    child: Text(buttontext,style: TextStyle(
                      fontWeight: FontWeight.bold,
                       fontSize: 18)
                       
                       ),
                    );
  }
}