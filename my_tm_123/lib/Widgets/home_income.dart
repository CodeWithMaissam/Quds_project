import 'package:flutter/material.dart';

class HomeIncome extends StatefulWidget {
  const HomeIncome({super.key});

  @override
  State<HomeIncome> createState() => _HomeIncomeState();
}

class _HomeIncomeState extends State<HomeIncome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            // padding: EdgeInsets.o(horizontal: 10),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Maissam",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "RS: 50000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
                Column(
                  children: [
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

                    
                  ],
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}