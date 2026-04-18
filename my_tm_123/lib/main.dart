import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/home_page.dart';
import 'package:my_tm_123/Screens/login/login.dart';
import 'package:my_tm_123/Widgets/home_income.dart';
import 'package:my_tm_123/category/category.dart';
import 'package:my_tm_123/firebase_options.dart';

void main() async{
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Budget Tracker',
      home: LogIn(),
      );
      
    
  }
}
