import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((e) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)),
                          padding: EdgeInsets.all(10),
                      child: Text(e.amount.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(e.title),
                        Text(e.date.toString())
                      ],
                    )
                  ],
                ));
              }).toList(),
            )
          ],
        ));
  }
}
