import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: "Watch", amount: 54.98, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Call of Duty", amount: 54.98, date: DateTime.now()),
    Transaction(
        id: 't3', title: "Hp Laptop", amount: 54.98, date: DateTime.now()),
    Transaction(
        id: 't4', title: "Apple x", amount: 54.98, date: DateTime.now()),
    Transaction(
        id: 't5',
        title: "Azure Subscription",
        amount: 54.98,
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transaction) {
        return Card(
            child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              padding: EdgeInsets.all(10),
              child: Text(
                'A: ${transaction.amount}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  transaction.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat('yyyy-MM-dd').format(transaction.date),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
