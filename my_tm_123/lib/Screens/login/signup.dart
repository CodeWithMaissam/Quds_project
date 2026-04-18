import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/login/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(
            child: Text(
              
              "Wellcome",
              
              style: TextStyle(
                fontSize: 40,
                fontWeight: .bold,
                color: Colors.black,
                
              ),
            
            ),
            
          ),
          Center(
            child: Text(
              
              "Please SignUp",
              
              style: TextStyle(
                fontSize: 40,
                fontWeight: .bold,
                color: Colors.black,
                
              ),
            
            ),
            
          ),

          SizedBox(height: 50),

          // Enter Your Name
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
                  Icons.person,
                  color: Colors.black,
                ),
                
                border: InputBorder.none,
                hintText: "Enter Your Name..."
              ),
            ),
          ),

          SizedBox(height: 20),

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



          // Enter Conform Password
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
                hintText: "Conform Password"
              ),
            ),
          ),
          // SizedBox(height: 5),

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
                    "Sign Up",
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
                  "Already have a Account",
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn(email: '', password: '',)));
                  
                }, child: Text(
                  "SignIn",
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