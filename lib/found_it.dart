import 'package:flutter/material.dart';
import 'user.dart';

class FoundIt extends StatelessWidget {
  const FoundIt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor:Color.fromARGB(255, 255, 255, 255),
       appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 60, 113, 120),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: Text('Found It'),
            ),
body: SafeArea(
  child:   Column(
    children: [
      Container(
         height: 200,
         width: 200,
        child: Image.asset('assets/logo.jpg',),
      ),
       Padding(
         padding: const EdgeInsets.all(20.0),
         child: TextFormField(
          
            minLines: 6,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
            alignLabelWithHint: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
             enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  const BorderSide(color:  Color.fromARGB(255, 2, 110, 140),width: 2),    
        ),
        focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide:  const BorderSide(color:  Color.fromARGB(255, 2, 110, 140),width: 2)
        ),
       
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  const BorderSide(color:  Color.fromARGB(255, 2, 110, 140),width: 2)  
        ), 
            labelText: 'Enter text',
            hintText: 'Enter Description ',
          ),
             ),
       ),
      Padding(
                        padding: const EdgeInsets.all(40),
                        child: ElevatedButton.icon(onPressed:(){}, label: Text('Location',) ,icon: Icon(Icons.location_pin,color: Color.fromARGB(255, 255, 255, 255),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromARGB(255, 2, 110, 140),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                          
                        ),
                        ),
                      ),

                       Padding(
                        padding: const EdgeInsets.all(40),
                        child: ElevatedButton.icon(onPressed:(){}, label: Text('Upload Image',) ,icon: Icon(Icons.camera,color: Color.fromARGB(255, 255, 255, 255),),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          backgroundColor: Color.fromARGB(255, 2, 110, 140),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                          
                        ),
                        ),
                      ),
                      
    ],
  )
                  
                ),
      ),
    );
  }
}