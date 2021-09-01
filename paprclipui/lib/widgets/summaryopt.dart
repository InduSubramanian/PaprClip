import 'package:flutter/material.dart';
import './summarybtn.dart';

class SummaryOpt extends StatelessWidget {
  const SummaryOpt({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SummaryBtn(time: "1 MIN", c: Colors.white),
          SummaryBtn(
            time: "5 MIN",
            c: Color(0x61FFFFFF),
          ),
          SummaryBtn(time: "15 MIN", c: Color(0x61FFFFFF)),
          SummaryBtn(time: "30 MIN", c: Color(0x61FFFFFF)),
          SummaryBtn(time: "1 HR", c: Color(0x61FFFFFF)),
          SummaryBtn(time: "5 HR", c: Color(0x61FFFFFF)),
          SummaryBtn(time: "1 DAY", c: Color(0x61FFFFFF)),
          SummaryBtn(time: "1 WK", c: Color(0x61FFFFFF)),
          SummaryBtn(time: "1 YR", c: Color(0x61FFFFFF)),
        ],
      ),
    );
  }
}
