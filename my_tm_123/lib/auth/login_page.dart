import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_tm_123/Screens/home_page.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}
  // String? errorMessage = '';
  // bool isLogin = true;

  // final TextEditingController _controllerEmail = TextEditingController();
  // final TextEditingController _controllerPassword = TextEditingController();

  // Future<void> signInWithEmailandPassword() async{
  //   // try{
  //   //   await Auth().signInWithEmailandPassword(
  //   //     email: _controllerEmail.text,
  //   //     password: _controllerPassword.text
  //   //   );
  //   // } on FirebaseAuthException  catch (e){
  //   //   setState() {
  //   //     errorMessage = e.message;
  //   //   }
      
  //   // };

  // }
  // // const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  
  class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isValidCredentials(
    String username,
    String password,
  ){
     return username == "admin" &&  password == 'password';
  }

  void _login() {
    if(_formKey.currentState!.validate()){
    final username = _userNameController.text;
    final password = _passwordController.text;
  
   if(_isValidCredentials(username, password)){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Invalid username and Password"))
    );
  }
  }
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}