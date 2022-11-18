import 'package:flutter/material.dart';
import 'models/playerslist.dart';
import 'models/dayslist.dart';
import './new_players.dart';
import './PlayerList.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DATA BASE',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'プレイヤー一覧'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<Pitcher>? pitchers = [
  //   Pitcher (id: '1', name: 'player1'),
  //   Pitcher (id: '2', name: 'player2'),
  // ];
  List<Pitcher> _pichers = [];

  void _addNewPlayer(String txname) {
    final newPl = Pitcher(
      id: DateTime.now().toString(),
      name: txname,
    );

    setState(() {
      _pichers.add(newPl);
    });
  }

  void startAddNewPlayer(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewPlayers(_addNewPlayer);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => startAddNewPlayer(context),
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            PlayerList(_pichers),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => startAddNewPlayer(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}

    //   body: Column(
    //     // children: [
    //     // Column(
    //     children: [
    //       Container(
    //         child: Text(
    //           player1.name,
    //         ),
    //       ),
    //       Center(
    //         child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Text(
    //                 '投球回：${player1.ip.toString()}',
    //               ),
    //               Text(
    //                 '打者数：${player1.bf.toString()}',
    //               ),
    //               Text(
    //                 '自責点：${player1.er.toString()}',
    //               ),
    //               Text(
    //                 '奪三振：${player1.K.toString()}',
    //               ),
    //               Text(
    //                 '四球：${player1.bb.toString()}',
    //               ),
    //               Text(
    //                 '死球：${player1.hbb.toString()}',
    //               ),
    //             ]),
    //       ),
    //       Center(
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text(
    //               '安打数：${player1.h.toString()}',
    //             ),
    //             Text(
    //               '被本塁打：${player1.run.toString()}',
    //             ),
    //             Text(
    //               'ボール数：${player1.tb.toString()}',
    //             ),
    //             Text(
    //               'ストライク数：${player1.ts.toString()}',
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () =>  startAddNewPlayer(context),
    //     child: const Icon(Icons.add),
    //   ),
    // );