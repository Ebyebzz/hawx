import 'package:flutter/material.dart';
import 'package:hawk/welcome.dart';
import 'user.dart';
import 'report.dart';
void main(){
runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
primarySwatch: Colors.blue
      ),
      home: ScreenWelcome(),
    );
  }
}