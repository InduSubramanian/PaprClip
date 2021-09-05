import 'package:flutter/material.dart';

import '../providers/data.dart';

import '../widgets/tableheading.dart';
import '../widgets/tablerow.dart';

class Table1 extends StatelessWidget {
  final TableData td;
  const Table1({
    @required this.td,
    Key key,
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
                      h1: e.k1,
                      h2: e.k3,
                      h3: e.k2,
                    ),
                  ],
                )
              : TableRow(
                  children: [
                    Tablerow(
                      d1: e.v1,
                      d2: e.v3,
                      d3: e.v2,
                      c3: e.v2 == "Buy" ? Color(0xFF007AFF) : Color(0xFFFF2E50),
                      c1: Colors.white,
                    ),
                  ],
                );
        }).toList(),

        // TableRow(children: [
        //   Tablerow(
        //       d1: "MA30", d2: "465.28", d3: "BUY", c3: Color(0xFF007AFF)),
        // ]),
        // TableRow(children: [
        //   Tablerow(
        //       d1: "MA100", d2: "465.28", d3: "SELL", c3: Color(0xFFFF2E50)),
        // ]),
        // ],
      ),
    );
  }
}
