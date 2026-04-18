
import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/home_page.dart';

class RemoveCash extends StatefulWidget {
  
  const RemoveCash({super.key});

  @override
  State<RemoveCash> createState() => _RemoveCashState();
}

class _RemoveCashState extends State<RemoveCash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[300],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Add Expense",

        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(

            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.green
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)

            ),
            child: TextFormField(
              decoration: InputDecoration(
                
                
                
                border: InputBorder.none,
                
                hintText: "Amount Resourse"
              ),
            ),
          ),
          


          Container(

            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.green
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)

            ),
            child: TextFormField(
              decoration: InputDecoration(
                
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.black,
                ),
                
                border: InputBorder.none,
                hintText: "Add New Expense"
              ),
            ),
          ),
          SizedBox(height: 20),


          ElevatedButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

            
          }, child: Text(
            "Remove",
          ))



        ],
      ),
    );
  }
}