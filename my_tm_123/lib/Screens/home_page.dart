import 'package:flutter/material.dart';
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
        // body: Column(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: .center,
        //   children: [
        //     Center(
        //       child: Card(
        //         color: Colors.blueGrey.shade100,
        //         margin: EdgeInsets.all(10),
        //         child: Container(
        //           width: double.infinity,
        //           // decoration: BoxDecoration(
        //           //   color: Colors.blueGrey.shade100
        //           // //   border: Border.all(),
        //           // //   borderRadius: BorderRadius.all(Radius.circular(10))
        //           // ),
                  
        //           child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Center(
        //               child: Text(
        //                 'Welcome to your Budget Tracker',
        //                 style: TextStyle(
        //                   // fontSize: 30
                          
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        body: Column(
          children: [
            WelcomeMessage(),
          ],
        ),
      ),
    );
  }
}