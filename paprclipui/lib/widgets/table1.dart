import 'package:flutter/material.dart';

import '../widgets/tableheading.dart';
import '../widgets/tablerow.dart';

class Table1 extends StatelessWidget {
  const Table1({
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
              h1: "Period",
              h2: "Value",
              h3: "Type",
            )
          ]),
          TableRow(children: [
            Tablerow(
                d1: "MA10", d2: "465.28", d3: "SELL", c3: Color(0xFFFF2E50)),
          ]),
          TableRow(children: [
            Tablerow(
                d1: "MA20", d2: "465.28", d3: "SELL", c3: Color(0xFFFF2E50)),
          ]),
          TableRow(children: [
            Tablerow(
                d1: "MA30", d2: "465.28", d3: "BUY", c3: Color(0xFF007AFF)),
          ]),
          TableRow(children: [
            Tablerow(
                d1: "MA100", d2: "465.28", d3: "SELL", c3: Color(0xFFFF2E50)),
          ]),
        ],
      ),
    );
  }
}
