import 'package:flutter/material.dart';
import 'package:hawk/found_it.dart';
import 'locate.dart';
import 'resources.dart';

class ScreenReport extends StatelessWidget {
  const ScreenReport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
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
            ),
            body: SafeArea(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg.jpg"),
                    fit: BoxFit.cover,
                    opacity: 50,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: OutlinedButton(
                          onPressed: () {
                             Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const locate()),
                       ); 
                          },
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  width: 2.0,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              fixedSize: const Size(340, 50)),
                          child: const Text('Locate Plant',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                              
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: OutlinedButton(
                          onPressed: () {
                             Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const resources()),
                     );
                          },
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  width: 2.0,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              fixedSize: const Size(340, 50)),
                          child: const Text('Resources',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: OutlinedButton(
                          onPressed: () {
                             Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const FoundIt()),
                       ); 
                          },
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  width: 2.0,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              fixedSize: const Size(340, 50)),
                          child: const Text('Found It',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ),
                      ),
                 
                   
                    ],

                  ),
                ),
              ),
            )));
  }
}
