import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mydataapp/DaysList.dart';
import 'package:mydataapp/models/playerslist.dart';
import 'models/playerslist.dart';
import 'models/dayslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydataapp/new_dayslist.dart';

class MySecondPage extends StatefulWidget {
  // const MySecondPage({Key? key}) : super(key: key);
  Pitcher pitcher;
  List<Days> days;
  MySecondPage(this.pitcher, this.days);

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  // List<Days> _days = [];


  void _addNewDays(String txname) {
    final newDay = Days(
      D_id: DateTime.now(),
      groundname: txname,
    );

    setState(() {
      widget.days.add(newDay);
    });
  }

  void startAddNewDays(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewDays(_addNewDays);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.pitcher.name,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DaysList(widget.days, widget.pitcher),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => startAddNewDays(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}