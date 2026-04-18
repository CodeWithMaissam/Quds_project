import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

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
                
                ElevatedButton(
                  
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
          )

        ],
      ),
    );
  }
}