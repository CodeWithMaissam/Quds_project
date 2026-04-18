import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_tm_123/Screens/home_page.dart';
// import 'package:cloud_firestore/cloud_firestore';
import 'auth.dart';

// void main(){
//   runApp(const loginApp());
// }
// class loginApp extends StatelessWidget {
//   const loginApp({Key? key}):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login',
//       home: LoginPage(),
//       );
//   }
// }





class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}):super(key: key);

   @override
  State<LoginPage> createState() => _LoginPageState();
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
  
   if(
    _isValidCredentials(username, password)
    ){
    Navigator.push(
      context, 
    MaterialPageRoute(builder: (context) => HomePage()));

  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Invalid username and Password"))
    );
  }
  }
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(padding: const EdgeInsetsGeometry.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _userNameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                // border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            const SizedBox(height: 16,),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: _login, child: const Text('Login')),
          ],
        ),
      ),
      ),
    );
  }
}