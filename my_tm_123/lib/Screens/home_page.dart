import 'package:flutter/material.dart';
import 'package:my_tm_123/Screens/expenses.dart';
// import 'package:my_tm_123/Widgets/Custom_card.dart';
import 'package:my_tm_123/Widgets/Custom_container.dart';
import 'package:my_tm_123/Widgets/welcome_message.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        appBar: AppBar(
          title: Text(
            'Personal Budget Tracker',
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            WelcomeMessage(),
            // Flexible(child: CustomCard()),
            // Flexible(child: CustomCard()),
            CustomContainer(Amount: 5000, Name: 'Name'),
            // Expenses(),
          ],
        ),
      ),
    );
  }
}