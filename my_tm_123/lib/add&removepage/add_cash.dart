import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/home_page.dart';

class AddCash extends StatefulWidget {
  
  const AddCash({super.key});

  @override
  State<AddCash> createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[300],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "AddCash",

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
                hintText: "Add New Amount"
              ),
            ),
          ),
          SizedBox(height: 20),


          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));

            
          }, child: Text(
            "Add",
          )),
          



        ],
      ),
    );
  }
}