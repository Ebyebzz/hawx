import 'package:flutter/material.dart';
import 'package:hawk/report.dart';
import 'package:hawk/widgets/text_field.dart';



class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor:Color.fromARGB(255, 255, 255, 255),
   appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 60, 113, 120),
bottomOpacity: 0.0,
elevation: 0.0,
          leading: IconButton(
    onPressed: () {
       Navigator.of(context).pop();
    },
    icon: const Icon(Icons.arrow_back),
          color:Color.fromARGB(255, 255, 255, 255),),),


        body:SafeArea(
          child: Container(
          
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/bg.jpg"),
      fit: BoxFit.cover,
    ),
  ),

            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                   CustomTextField(hinttext: "Enter Email Id"),
                   CustomTextField(hinttext: "Enter Password"),
                        
                     
                      Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: ElevatedButton(
                             onPressed: () {  Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const ScreenReport()),
                           ); },
                             style: ElevatedButton.styleFrom(
                               backgroundColor: const Color.fromARGB(255, 60, 113, 120),
                               fixedSize: const Size(260, 50),
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                             ),
                           child: const Text('Login',style: TextStyle(
                             fontWeight: FontWeight.bold,
                              fontSize: 18)
                              ),
                           ),
                     ),
                   ],
                  ),
              )),
          ),
        ),
    ));
  }
}

