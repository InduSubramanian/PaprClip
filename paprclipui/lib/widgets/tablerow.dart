import 'package:flutter/material.dart';

class Tablerow extends StatelessWidget {
  final String d1, d2, d3;
  final Color c3;
  final Color c1;
  const Tablerow(
      {Key key,
      @required this.d1,
      @required this.d2,
      @required this.d3,
      @required this.c3,
      @required this.c1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ((size.width * 0.9) / 3),
            child: Text(
              d1,
              style: Theme.of(context).textTheme.subtitle2.copyWith(color: c1),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: ((size.width * 0.9) / 3.5),
            child: Text(
              d2,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Container(
            // alignment: Alignment.centerRight,
            width: ((size.width * 0.9) / 3.15),
            child: Text(
              d3.toUpperCase(),
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.subtitle2.copyWith(color: c3),
            ),
          )
        ],
      ),
    );
  }
}
