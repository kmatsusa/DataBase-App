import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewDays extends StatefulWidget {
  // const NewPlayers({super.key});
  final Function addtx;

  NewDays(this.addtx);

  @override
  State<NewDays> createState() => _NewDaysState();
}

class _NewDaysState extends State<NewDays> {
  final nameController = TextEditingController();
  void submitData() {
    final enterdTitle = nameController.text;
    if (enterdTitle.isEmpty) {
      return;
    }
    widget.addtx(
      enterdTitle,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'グラウンド名'),
              controller: nameController,
              onSubmitted: (_) => submitData(),
              // onChanged: (value) => titleInput = value,
            ),
            TextButton(
              onPressed: submitData,
              child: Text('submit'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
