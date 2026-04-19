



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RemoveCash extends StatefulWidget {

  final Function(double) onSub;

  const RemoveCash({super.key, required this.onSub});

  @override
  State<RemoveCash> createState() => _AddCashState();
}

class _AddCashState extends State<RemoveCash> {
  final TextEditingController _expenseController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _handleConfirm() {

    final String expense = _expenseController.text;
    final String input = _amountController.text;

    final double? enteredAmount = double.tryParse(input);

    if (enteredAmount != null && enteredAmount > 0) {

      widget.onSub(enteredAmount);


      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("RS: ${enteredAmount.toStringAsFixed(2)} remove ${_expenseController.text} added to wallet"),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
        ),
      );

      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter a valid amount"),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Remove Cash"),
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon:  Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Top Up Wallet",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 8),
             Text(
              "Enter the amount you want to Remove from your current balance.",
              style: TextStyle(color: Colors.grey),
            ),
             SizedBox(height: 32),


             TextField(
              controller: _expenseController,
              autofocus: true,
              
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Resource",
                hintText: "Enter the Resource",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),

            SizedBox(height: 32),
            
            
            TextField(
              controller: _amountController,
              autofocus: true,
              keyboardType:  TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
              ],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Amount",
                prefixText: "RS: ",
                hintText: "0.00",
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),
            
             SizedBox(height: 32),

            
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: _handleConfirm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  "Confirm & Remove Cash",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}