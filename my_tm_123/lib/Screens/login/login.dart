import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/home_page.dart';
import 'package:my_tm_123/Screens/login/signup.dart';
// import 'package:my_tm_123/Screens/login/signup.dart';

// void main()
// {
//    runApp(const LogIn());
// }

class LogIn extends StatefulWidget {
   const LogIn({Key? key}):super(key: key);
  // final String email;
  // final String password;
  // const LogIn({
  //   super.key,
  //   // required this.email, 
  //   // required this.password,
  //   });

  @override
  State<LogIn> createState() => _LogInState();
}
// class _LogInState extends State<LogIn> {
  
  
class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isValidCredentials(
    String username,
    String password,
  ){
     return username == 'admin' &&  password == 'password';
  }

void _login(
  // BuildContext context
  ) {
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
                controller: _userNameController,
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
            ElevatedButton(onPressed: _login,
            // () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
             //forgot password navigation 
            // }, 
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