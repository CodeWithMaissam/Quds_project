import 'package:flutter/material.dart';
import 'package:my_tm_123/add&removepage/add_cash.dart';
import 'package:my_tm_123/add&removepage/remove.dart';

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
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green[300],
              borderRadius: BorderRadius.circular(10)
            ),
            
            width: double.infinity,
            height: 150,
            // color: Colors.red,
            padding: EdgeInsets.all( 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    
                    
                    children: [

                      Text(
                        "Maissam",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                  
                      Row(
                        children: [
                          Text(
                            "RS: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                        "50000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        ],
                      ),
                      
                  
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: .end,
                  crossAxisAlignment: .end,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RemoveCash()));
                      
                    }, child: Text(
                      "Add New Expense"
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddCash()));
                      
                    }, child: Text(
                      "Add Cash"
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