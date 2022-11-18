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
                              '投球回：${day.D_ip.toString()}',
                            ),
                            Text(
                              '打者数：${day.D_bf.toString()}',
                            ),
                            Text(
                              '自責点：${day.D_er.toString()}',
                            ),
                            Text(
                              '奪三振：${day.D_K.toString()}',
                            ),
                            Text(
                              '四球：${day.D_bb.toString()}',
                            ),
                            Text(
                              '死球：${day.D_hbb.toString()}',
                            ),
                          ]),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '安打数：${day.D_h.toString()}',
                          ),
                          Text(
                            '被本塁打：${day.D_run.toString()}',
                          ),
                          Text(
                            'ボール数：${day.D_tb.toString()}',
                          ),
                          Text(
                            'ストライク数：${day.D_ts.toString()}',
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
