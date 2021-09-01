import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/salesIndicator.dart';
import '../widgets/dropdown.dart';
import '../widgets/table1.dart';
import '../widgets/primarybutton.dart';
import '../widgets/table2.dart';
import '../widgets/pivottable.dart';
import '../widgets/indicationbar.dart';
import '../widgets/summaryopt.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Header(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0x121212),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Technical Indicators",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0x99FFFFFF),
                        ),
                      ),
                      Image.asset("./assets/icons/dropdown_arrow.png")
                    ],
                  ),
                ),
                Text(
                  "Summary",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IndicationBar(),
                    SummaryOpt(),
                  ],
                ),
                Container(
                  height: 100,
                ),
                Text(
                  "Moving Averages",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                PrimaryButton(
                  c: Color(0xFF007AFF),
                  val: "BUY",
                ),
                SalesIndicator(
                  buy: "7",
                  neutral: "-",
                  sell: "5",
                ),
                DropDown(
                  val: "Exponential",
                ),
                Table1(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Oscillators",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                PrimaryButton(
                  c: Color(0xFFFF2E50),
                  val: "STRONG SELL",
                ),
                SalesIndicator(
                  buy: "1",
                  neutral: "1",
                  sell: "9",
                ),
                SizedBox(height: 15),
                Table2(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Pivot points",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                DropDown(val: "Classic"),
                PivotTable(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
