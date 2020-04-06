import 'package:flutter/material.dart';
import './Transaction.dart';

class Transactions extends StatelessWidget {
  final List<Transaction> transactions;

  Transactions(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return
             Card(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(transactions[index].amount.toString()),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2)),
                    padding: EdgeInsets.all(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        transactions[index].dateTime.toString(),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: transactions.length,
        ));
  }
}
