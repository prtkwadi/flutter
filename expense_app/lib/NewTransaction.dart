import 'package:flutter/material.dart';
import './Transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function userTransactions;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitDate() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    userTransactions(enteredTitle, enteredAmount);
  }

  NewTransaction(this.userTransactions);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitDate(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              onSubmitted: (_) => submitDate(),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: submitDate,
            ),
          ],
        ),
      ),
    );
  }
}
