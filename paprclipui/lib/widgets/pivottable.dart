import 'package:flutter/material.dart';

import '../providers/data.dart';

class PivotTable extends StatelessWidget {
  final PivotPointsData pivotPoints;
  const PivotTable({Key key, @required this.pivotPoints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: Column(
        children: [
          PivotRow(
            title: "Pivot Points",
            value: pivotPoints.pivot,
          ),
          PivotRow(title: "R1", value: pivotPoints.r1),
          PivotRow(title: "R2", value: pivotPoints.r2),
          PivotRow(title: "R3", value: pivotPoints.r3),
          PivotRow(title: "S1", value: pivotPoints.s1),
          PivotRow(title: "S2", value: pivotPoints.s2),
          PivotRow(title: "S3", value: pivotPoints.s3),
        ],
      ),
    );
  }
}

class PivotRow extends StatelessWidget {
  final String title;
  final String value;
  const PivotRow({Key key, @required this.title, @required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              .copyWith(color: Color(0x99FFFFFF)),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ]),
    );
  }
}
