import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mydataapp/models/dayslist.dart';
import './PlayerList.dart';
import 'package:mydataapp/second.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mydataapp/DaysList.dart';
import 'models/playerslist.dart';
import 'models/dayslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MythirdPage extends StatelessWidget {
  // const MythirdPage({Key? key}) : super(key: key);
  Days day;
  Pitcher pl;

  MythirdPage(this.day, this.pl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${pl.name} ${day.groundname} ${DateFormat.yMd().format(day.D_id)}',
        ),
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: const Center(
          child: Text("This is third Page!"),
        ),
      ),
    );
  }
}

class DaysList extends StatelessWidget {
  // const PlayerList({super.key});

  final List<Days> days;
  Pitcher pl;

  DaysList(this.days, this.pl);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView(
        children: days.map((day) {
          return GestureDetector(
            onTap: (() {
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return MythirdPage(day, pl);
              }));
            }),
            child: Card(
              child: Row(children: <Widget>[
                Column(
                  // children: [
                  // Column(
                  children: [
                    Center(
                      child: Row(
                        children: [
                          Text(
                            '${day.groundname}    ',
                          ),
                          Text(
                            DateFormat.yMd().format(day.D_id),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '????????????${day.D_ip.toString()}',
                            ),
                            Text(
                              '????????????${day.D_bf.toString()}',
                            ),
                            Text(
                              '????????????${day.D_er.toString()}',
                            ),
                            Text(
                              '????????????${day.D_K.toString()}',
                            ),
                            Text(
                              '?????????${day.D_bb.toString()}',
                            ),
                            Text(
                              '?????????${day.D_hbb.toString()}',
                            ),
                          ]),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '????????????${day.D_h.toString()}',
                          ),
                          Text(
                            '???????????????${day.D_run.toString()}',
                          ),
                          Text(
                            '???????????????${day.D_tb.toString()}',
                          ),
                          Text(
                            '?????????????????????${day.D_ts.toString()}',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          );
        }).toList(),
      ),
      // ),
    );
  }
}
