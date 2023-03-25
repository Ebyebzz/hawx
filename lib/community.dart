import 'package:flutter/material.dart';
import 'package:hawk/widgets/text_field.dart';
import 'user.dart ';
import 'otp_page.dart';


class ScreenCommunity extends StatelessWidget {
  const ScreenCommunity({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
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
       backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        body:SafeArea(
          child: Container(
             decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/bg.jpg"),
      fit: BoxFit.cover,
      opacity: 50,
    ),
  ),

            child: Center(
              
               child: SingleChildScrollView(
                 child: Column(
                  
                 children: [
                    SizedBox(
                      width: 270,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           CustomTextField(hinttext: "Name"),
                           CustomTextField(hinttext: "Job"),
                            CustomTextField(hinttext: "Address"),
                             CustomTextField(hinttext: "Why do you want to join our community"),  
                             CustomTextField(hinttext: "Email Id"),
                             CustomTextField(hinttext: "Password"),
                             CustomTextField(hinttext: "Retype Password"),                    
                       ElevatedButton(
                        onPressed: () { 
                          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ScreenOtp()));  
                       },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 60, 113, 120),
                          fixedSize: const Size(240, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                        ),
                      child: Text('Join',style: TextStyle(
                        fontWeight: FontWeight.bold,
                         fontSize: 18)
                         ),
                      )
                   
                        ],
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
