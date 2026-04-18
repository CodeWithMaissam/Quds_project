import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/home_page.dart';
import 'package:my_tm_123/Screens/login/signup.dart';
import 'package:my_tm_123/auth/auth.dart';

class LogIn extends StatefulWidget {
   const LogIn({Key? key}):super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

  
  
class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
    final AuthService _authService = AuthService();





void login() async {
    try {
      await _authService.loginWithEmail(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );


      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    } catch (e) {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: .center,
          children: [
        
            Center(
              child: Text(
                
                "Your Personal Budget Tracker",
                
                style: TextStyle(
                  fontSize: 24,
                  // fontWeight: .bold,
                  color: Colors.black,
                  
                ),
              
              ),
              
            ),
            
            Center(
              child: Text(
                
                "Login",
                
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: .bold,
                  color: Colors.black,
                  
                ),
              
              ),
              
            ),
        
            SizedBox(height: 50),
        
        
        
            // Enter your Email
            Container(
        
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
        
              ),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  
                  border: InputBorder.none,
                  hintText: "Enter Your Email..."
                  
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter your Email';
                  }
                  return null;
                },
              ),
            ),
        
            SizedBox(height: 20),
        
        
            // Enter your Password
            Container(
              
        
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
        
              ),
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.black,
                  ),
                  
                  border: InputBorder.none,
                  hintText: "Enter Your Password..."
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
            ),
        
            SizedBox(height: 20),
        
        
        
        
            SizedBox(height: 5),
        
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                
                mainAxisAlignment: .end,
                children: [
                  
        
                  
                  
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: login,
           
            child:Text(
                textAlign: .center,
                      "Sign In",
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ), 
            ),
        
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                // crossAxisAlignment: .end,
                mainAxisAlignment: .center,
                children: [
                  
                  Text(
                    "Create New Account",
                  ),
                  TextButton(onPressed: 
                  () 
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                    
                  },
                   child: Text(
                    "SignUp",
                  ),
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}