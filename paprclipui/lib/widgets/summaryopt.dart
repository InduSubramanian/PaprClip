import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/data.dart';
import './summarybtn.dart';

class SummaryOpt extends StatefulWidget {
  // final Function(String s) buttonClicked;
  const SummaryOpt({
    Key key,
  }) : super(key: key);

  @override
  _SummaryOptState createState() => _SummaryOptState();
}

class _SummaryOptState extends State<SummaryOpt> {
  int s;
  @override
  void initState() {
    s = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SummaryBtn(
            timedataset: "1min",
            time: "1 MIN",
            c: s == 0 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              print("1Min");
              setState(() {
                s = 0;
                // Provider.of<DataSet>(context).setData("1min");
              });
            },
          ),
          SummaryBtn(
            timedataset: "5min",
            time: "5 MIN",
            c: s == 1 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 1;
                // Provider.of<DataSet>(context).setData("5min");
              });
            },
          ),
          SummaryBtn(
            timedataset: "15min",
            time: "15 MIN",
            c: s == 2 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 2;
                // Provider.of<DataSet>(context).setData("15min");
              });
            },
          ),
          SummaryBtn(
            timedataset: "30min",
            time: "30 MIN",
            c: s == 3 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 3;
              });
            },
          ),
          SummaryBtn(
            timedataset: "1hour",
            time: "1 HR",
            c: s == 4 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 4;
              });
            },
          ),
          SummaryBtn(
            timedataset: "5hour",
            time: "5 HR",
            c: s == 5 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 5;
              });
            },
          ),
          SummaryBtn(
            timedataset: "daily",
            time: "1 DAY",
            c: s == 6 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 6;
              });
            },
          ),
          SummaryBtn(
            timedataset: "weekly",
            time: "1 WK",
            c: s == 7 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 7;
              });
            },
          ),
          SummaryBtn(
            timedataset: "monthly",
            time: "1 YR",
            c: s == 8 ? Colors.white : Color(0x61FFFFFF),
            whichButton: () {
              setState(() {
                s = 8;
              });
            },
          ),
        ],
      ),
    );
  }
}
