import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              //onChanged: (value) {
              //  titleInput = value;
              //},
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              //onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text("Add transaction"),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
