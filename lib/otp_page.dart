import 'package:flutter/material.dart';
import 'user.dart';

//import 'package:flutter/rendering.dart';
//import 'package:nurse/my_text_widget.dart';
class ScreenOtp extends StatelessWidget {
  const ScreenOtp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.transparent,
bottomOpacity: 0.0,
elevation: 0.0,
          leading: IconButton(
    onPressed: () {
       Navigator.of(context).pop();
    },
    icon: const Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 60, 113, 120),),),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/logo.jpg',)),
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       SizedBox(height: 40,),
                        SizedBox(
                              height: 50,
                              width: 261,
                              child: TextField(
                              decoration: InputDecoration(
                               enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                               borderSide:  const BorderSide(color: Color.fromARGB(255, 60, 113, 120),width: 2)
                                  
                                ),
                                focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                               borderSide:  const BorderSide(color: Color.fromARGB(255, 60, 113, 120),width: 2)
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:  const BorderSide(color: Color.fromARGB(255, 60, 113, 120),width: 2)
                                  
                                ),
                                
                                 hintText: 'Enter Phone Number',
                              ),
                              ),
                            ),
                           
                      ElevatedButton(
                        onPressed: () {  },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 60, 113, 120),
                          fixedSize: const Size(261, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                        ),
                      child: const Text('Send OTP',style: TextStyle(
                        fontWeight: FontWeight.bold,
                         fontSize: 18)
                         ),
                      ),
                      SizedBox(
                              height: 50,
                              width: 261,
                              child: TextField(
                              decoration: InputDecoration(
                               enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                               borderSide:  const BorderSide(color: Color.fromARGB(255, 60, 113, 120),width: 2)
                                  
                                ),
                                focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20),
                               borderSide:  const BorderSide(color: Color.fromARGB(255, 60, 113, 120),width: 2)
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:  const BorderSide(color: Color.fromARGB(255, 60, 113, 120),width: 2)
                                  
                                ),
                                
                                 hintText: 'Enter OTP',
                              ),
                              ),
                            ),
                           
                        ElevatedButton(
                        onPressed: () {  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const UserPro()));
                       },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 60, 113, 120),
                          fixedSize: const Size(261, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                        ),
                      child: const Text('Confirm',style: TextStyle(
                        fontWeight: FontWeight.bold,
                         fontSize: 18)
                         ),
                      ),
                    ],
                  ),
                ),
               ],
              )),
        ),
    ));
  }
}

