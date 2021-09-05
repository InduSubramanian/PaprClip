// import 'dart:html';

import 'package:flutter/material.dart';

import '../widgets/tableheading.dart';
import '../widgets/tablerow.dart';
import '../providers/data.dart';

// enum TextColor { Buy, Sell, Neutral, Other }

class Table2 extends StatelessWidget {
  final TableData td;
  const Table2({
    Key key,
    @required this.td,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: td.d.map((e) {
          return td.d.indexOf(e) == 0
              ? TableRow(
                  children: [
                    TableHeading(
                      h1: e.k2,
                      h2: e.k3,
                      h3: e.k1,
                    )
                  ],
                )
              : TableRow(
                  children: [
                    Tablerow(
                        d1: e.v2,
                        d2: e.v3,
                        d3: e.v1,
                        c1: Color(0x99FFFFFF),
                        c3: e.v1 == "Buy"
                            ? Color(0xFF007AFF)
                            : e.v1 == "Neutral"
                                ? Color(0xFFFFB946)
                                : e.v1 == "Sell"
                                    ? Color(0xFFFF2E50)
                                    : Color(0x99FFFFFF)),
                  ],
                );
          // ),
        }).toList(),

        // TableRow(children: [
        //   Tablerow(
        //       d1: "RSI (14)",
        //       d2: "-53.6549",
        //       d3: "NEUTRAL",
        //       c1: Color(0x99FFFFFF),
        //       c3: Color(0xFFFFB946)),
        // ]),
        // TableRow(children: [
        //   Tablerow(
        //       d1: "Awesome  Oscillator",
        //       d2: "-53.6549",
        //       d3: "SELL",
        //       c1: Color(0x99FFFFFF),
        //       c3: Color(0xFFFF2E50)),
        // ]),
        // TableRow(children: [
        //   Tablerow(
        //       d1: "Momentum (10)",
        //       d2: "465.28",
        //       d3: "BUY",
        //       c1: Color(0x99FFFFFF),
        //       c3: Color(0xFF007AFF)),
        // ]),
        // TableRow(children: [
        //   Tablerow(
        //       d1: "Stochastic RSI Fast (3, 3, 14, 14)",
        //       d2: "465.28",
        //       d3: "SELL",
        //       c1: Color(0x99FFFFFF),
        //       c3: Color(0xFFFF2E50)),
        // ]),
        // TableRow(children: [
        //   Tablerow(
        //       d1: "Ultimate Oscillator\n(7, 14, 28)",
        //       d2: "465.28",
        //       d3: "LESS \nVOLATAILE",
        //       c1: Color(0x99FFFFFF),
        //       c3: Color(0x99FFFFFF)),
        // ]),
        // ],
      ),
    );
  }
}
