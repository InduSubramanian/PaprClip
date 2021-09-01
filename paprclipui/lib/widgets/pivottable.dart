import 'package:flutter/material.dart';

class PivotTable extends StatelessWidget {
  const PivotTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "S3",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(color: Color(0x99FFFFFF)),
                  ),
                  Text(
                    "456.87",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "S2",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(color: Color(0x99FFFFFF)),
                  ),
                  Text(
                    "456.87",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pivot Points",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(color: Color(0x99FFFFFF)),
                  ),
                  Text(
                    "456.87",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "R3",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(color: Color(0x99FFFFFF)),
                  ),
                  Text(
                    "456.87",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
