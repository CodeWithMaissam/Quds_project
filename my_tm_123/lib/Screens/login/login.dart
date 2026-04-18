import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/login/signup.dart';

class LogIn extends StatefulWidget {
  final String email;
  final String password;
  const LogIn({
    super.key,
    required this.email, 
    required this.password
    });

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
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
              decoration: InputDecoration(
                
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                
                border: InputBorder.none,
                hintText: "Enter Your Email..."
              ),
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
              decoration: InputDecoration(
                
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.black,
                ),
                
                border: InputBorder.none,
                hintText: "Enter Your Password..."
              ),
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
          ElevatedButton(onPressed: () {
            
          }, 
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
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                  
                }, child: Text(
                  "SignUp",
                ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}