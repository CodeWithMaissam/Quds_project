import 'package:flutter/material.dart';


import 'package:my_tm_123/category/add_cash.dart';
import 'package:my_tm_123/category/remove_cash.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _HomePageState();
}

class _HomePageState extends State<Profile> {
  
  double _currentBalance = 0.00; 
  

  void _update(double amount) {
    setState(() {
      _currentBalance -= amount;
    });

  }

  void _updateBalance(double amount) {
    setState(() {
      _currentBalance += amount;
    });
  }

  

  @override
  Widget build(BuildContext context) {

    final List<Widget> _children = [
      DashboardView(
        balance: _currentBalance, 
        onBalanceChanged: _updateBalance,
        OnDecreaseBalence: _update,
      ),
      
      
      
    ];

    return Scaffold(
      
      body: DashboardView(balance:_currentBalance , onBalanceChanged: (double p1) {  },
      OnDecreaseBalence: (double p1) {  } ,
      
      ),
      
       
    
    );
  }
}

class DashboardView extends StatelessWidget {
  final double balance;
  final Function(double) onBalanceChanged;
  final Function(double) OnDecreaseBalence;

  // 4. Constructor to receive the data
  const DashboardView({
    super.key, 
    required this.balance, 
    required this.onBalanceChanged,
    required this.OnDecreaseBalence,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:  EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.green[300], 
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 150,
          padding:  EdgeInsets.all(10),
          child: Row(mainAxisAlignment: .center,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    Text(
                     "Maissam",
                     style: TextStyle(
                       fontSize: 28, 
                     // fontWeight: FontWeight.bold
                     ),
                    ),
              Spacer(),
              
              
              
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddCash(
                          onAdd: (amount) {
                            
                            OnDecreaseBalence(amount);
                          },
                        ),
                      ),
                    );
                  },
                  child:  Text("Add Cash"),
                ),
              )
                  ],
                ),
              ),
              //  Spacer(),
              // Center(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => AddCash(
              //             onAdd: (amount) {
                            
              //               OnDecreaseBalence(amount);
              //             },
              //           ),
              //         ),
              //       );
              //     },
              //     child:  Text("Add Cash"),
              //   ),
              // )
            ],
          ),
        ),
        Center(
          child: Stack(
            children: [
              Text('Coming Soon.....'),
            ],
          ),
        )
      ],
    );
  }
}