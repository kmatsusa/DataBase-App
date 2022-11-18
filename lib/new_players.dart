import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewPlayers extends StatefulWidget {
  // const NewPlayers({super.key});
  final Function addtx;

  NewPlayers(this.addtx);

  @override
  State<NewPlayers> createState() => _NewPlayersState();
}

class _NewPlayersState extends State<NewPlayers> {
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
              decoration: InputDecoration(labelText: 'name'),
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
