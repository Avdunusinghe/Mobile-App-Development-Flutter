import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //const NewTransaction({Key key}) : super(key: key);
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
            /*  onChanged: (value) {
                      titleInput = value;
                    }, */
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
            keyboardType: TextInputType.number,
            /*  onChanged: (value) => amountInput = value, */
          ),
          FlatButton(
            onPressed: () {
              addTransaction(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            child: Text('Add Transaction'),
            textColor: Colors.purple,
          ),
        ]),
      ),
    );
  }
}
