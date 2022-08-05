import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //const NewTransaction({Key key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
            /*  onChanged: (value) => amountInput = value, */
          ),
          FlatButton(
            onPressed: () {
              print(titleController.text);
              print(amountController.text);
            },
            child: Text('Add Transaction'),
            textColor: Colors.purple,
          ),
        ]),
      ),
    );
  }
}
