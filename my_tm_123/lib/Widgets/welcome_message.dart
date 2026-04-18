import 'package:flutter/material.dart';
class WelcomeMessage extends StatefulWidget {
  const WelcomeMessage({super.key});

  @override
  State<WelcomeMessage> createState() => _WelcomeMessageState();
}

class _WelcomeMessageState extends State<WelcomeMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: .center,
          children: [
            Center(
              child: Card(
                color: Colors.blueGrey.shade100,
                margin: EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  // decoration: BoxDecoration(
                  //   color: Colors.blueGrey.shade100
                  // //   border: Border.all(),
                  // //   borderRadius: BorderRadius.all(Radius.circular(10))
                  // ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Welcome to your Budget Tracker',
                        style: TextStyle(
                          // fontSize: 30
                          
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
  }
}