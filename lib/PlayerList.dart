import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mydataapp/DaysList.dart';
import 'package:mydataapp/models/playerslist.dart';
import 'models/playerslist.dart';
import 'models/dayslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydataapp/second.dart';
// import 'package:intl/intl.dart';

class PlayerList extends StatelessWidget {
  // const PlayerList({super.key});

  final List<Pitcher> pitchers;

  PlayerList(this.pitchers);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView(
        children: pitchers.map((pl) {
          // int idx = pl.key;
          int i = pitchers.indexOf(pl);

          return GestureDetector(
            onTap: (() {
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return MySecondPage(pl, pl.days);
              }));
            }),
            child: Card(
              child: Row(children: <Widget>[
                Column(
                  // children: [
                  // Column(
                  children: [
                    Container(
                      child: Text(
                        pl.name,
                      ),
                    ),
                    Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '投球回：${pl.ip.toString()}',
                            ),
                            Text(
                              '打者数：${pl.bf.toString()}',
                            ),
                            Text(
                              '自責点：${pl.er.toString()}',
                            ),
                            Text(
                              '奪三振：${pl.K.toString()}',
                            ),
                            Text(
                              '四球：${pl.bb.toString()}',
                            ),
                            Text(
                              '死球：${pl.hbb.toString()}',
                            ),
                            Text(
                              i.toString(),
                            ),
                          ]),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '安打数：${pl.h.toString()}',
                          ),
                          Text(
                            '被本塁打：${pl.run.toString()}',
                          ),
                          Text(
                            'ボール数：${pl.tb.toString()}',
                          ),
                          Text(
                            'ストライク数：${pl.ts.toString()}',
                          ),
                          Text(
                            '球数：${pl.tp.toString()}',
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
