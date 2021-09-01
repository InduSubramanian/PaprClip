import 'package:flutter/material.dart';

import '../widgets/tableheading.dart';
import '../widgets/tablerow.dart';

class Table2 extends StatelessWidget {
  const Table2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            TableHeading(
              h1: "Name",
              h2: "Value",
              h3: "Action",
            )
          ]),
          TableRow(children: [
            Tablerow(
                d1: "RSI (14)",
                d2: "-53.6549",
                d3: "NEUTRAL",
                c1: Color(0x99FFFFFF),
                c3: Color(0xFFFFB946)),
          ]),
          TableRow(children: [
            Tablerow(
                d1: "Awesome  Oscillator",
                d2: "-53.6549",
                d3: "SELL",
                c1: Color(0x99FFFFFF),
                c3: Color(0xFFFF2E50)),
          ]),
          TableRow(children: [
            Tablerow(
                d1: "Momentum (10)",
                d2: "465.28",
                d3: "BUY",
                c1: Color(0x99FFFFFF),
                c3: Color(0xFF007AFF)),
          ]),
          TableRow(children: [
            Tablerow(
                d1: "Stochastic RSI Fast (3, 3, 14, 14)",
                d2: "465.28",
                d3: "SELL",
                c1: Color(0x99FFFFFF),
                c3: Color(0xFFFF2E50)),
          ]),
          TableRow(children: [
            Tablerow(
                d1: "Ultimate Oscillator\n(7, 14, 28)",
                d2: "465.28",
                d3: "LESS \nVOLATAILE",
                c1: Color(0x99FFFFFF),
                c3: Color(0x99FFFFFF)),
          ]),
        ],
      ),
    );
  }
}
