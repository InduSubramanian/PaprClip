import 'package:flutter/material.dart';

class SummaryBtn extends StatelessWidget {
  final String time;
  final Color c;
  const SummaryBtn({Key key, @required this.time, @required this.c})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: 55,
        height: 31,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: c),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          time,
          style: TextStyle(color: c, fontSize: 12),
        ),
      ),
    );
  }
}
