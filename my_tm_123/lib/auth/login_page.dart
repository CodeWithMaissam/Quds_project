import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailandPassword() async{
    // try{
    //   await Auth().signInWithEmailandPassword(
    //     email: _controllerEmail.text,
    //     password: _controllerPassword.text
    //   );
    // } on FirebaseAuthException  catch (e){
    //   setState() {
    //     errorMessage = e.message;
    //   }
      
    // };

  }
  // const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}