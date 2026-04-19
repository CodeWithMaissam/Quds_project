import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/profile.dart';
import 'package:my_tm_123/Widgets/custom_container.dart';

import 'package:my_tm_123/auth/firestore.dart';
import 'package:my_tm_123/category/add_cash.dart';
import 'package:my_tm_123/category/remove_cash.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
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

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
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
       Firestore(),
       Profile(),
      
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Budget Tracker'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
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
          child: Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Maissam",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                     Spacer(),
                    Row(
                      children: [
                         Text("RS: ", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                        
                        Text(
                          balance.toStringAsFixed(0), 
                          style:  TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  RemoveCash(onSub: (amount) { 
                        OnDecreaseBalence(amount);

                       },)));
                    },
                    child:  Text("Add New Expense"),
                  ),
                   SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddCash(
                            onAdd: (amount) {
                              
                              onBalanceChanged(amount);
                            },
                          ),
                        ),
                      );
                    },
                    child:  Text("Add Cash"),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: CustomContainer(name: 'Income',)
            ),
            Expanded(
              child: CustomContainer(name: 'History',)
            ),
            
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomContainer(name: 'Savings',)
            ),
            Expanded(
              child: CustomContainer(name: 'Expenses',)
            ),
            
          ],
        ),
        ]
        );
      
    
  }
}