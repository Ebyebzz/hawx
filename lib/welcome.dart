import 'package:flutter/material.dart';
import 'package:hawk/login.dart';
import 'package:hawk/report.dart';
import 'package:hawk/user.dart';
import 'community.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor:Color.fromARGB(255, 255, 255, 255),
       appBar: AppBar(
  backgroundColor:const Color.fromARGB(255, 60, 113, 120),
  elevation: 0,
      
     leading: 
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: CircleAvatar(backgroundImage: AssetImage("assets/logo.jpg",),
             ),
       ),
    
      
      ),


        body:SafeArea(
          child: Container(
          
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/bg.jpg"),
      fit: BoxFit.cover,
    ),
  ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                          onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ScreenLogin()),
                        ); },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 60, 113, 120),
                            fixedSize: const Size(300, 50),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ),
                        child: const Text('Report Now',style: TextStyle(
                          fontWeight: FontWeight.bold,
                           fontSize: 18)
                           ),
                            
                        ),
                  ),
                      
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: ElevatedButton(
                           onPressed: () {  Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const ScreenCommunity()),
                         ); },
                           style: ElevatedButton.styleFrom(
                             backgroundColor: const Color.fromARGB(255, 60, 113, 120),
                             fixedSize: const Size(300, 50),
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                           ),
                         child: const Text('Join Our Community',style: TextStyle(
                           fontWeight: FontWeight.bold,
                            fontSize: 18)
                            ),
                         ),
                   ),
                 ],
                )),
          ),
        ),
    ));
  }
}

