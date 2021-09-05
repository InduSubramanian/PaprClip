import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/primarybutton.dart';
import '../widgets/salesIndicator.dart';
import '../widgets/dropdown.dart';
import '../widgets/table1.dart';

import '../providers/data.dart';

class MovingAverageScreen extends StatefulWidget {
  MovingAverageScreen({Key key}) : super(key: key);

  @override
  _MovingAverageScreenState createState() => _MovingAverageScreenState();
}

class _MovingAverageScreenState extends State<MovingAverageScreen> {
  String _whichDropDown;
  // @override
  // void didChangeDependencies() {
  //   Provider.of<DataSet>(context).setData("1min");
  //   super.didChangeDependencies();
  // }
  void _checkDropDown(String val) {
    if (val == "Exponential") {
      print(val);
    } else {
      print("helloo");
    }
    setState(() {
      _whichDropDown = val.toLowerCase();
      // print("Put exp val inside table 1");
    });
  }

  @override
  Widget build(BuildContext context) {
    MovingAverage info = Provider.of<DataSet>(context).movAvgInfo;
    return Column(
      children: [
        Text(
          "Moving Averages",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        PrimaryButton(
          c: Color(0xFF007AFF),
          val: info.text.toUpperCase(),
          // info.text.toUpperCase()
        ),
        SalesIndicator(
          buy: info.buy,
          neutral: "-",
          sell: info.sell,
        ),
        DropDown(
          items: ["Exponential", "Simple"],
          checkDropdown: _checkDropDown,
        ),
        Table1(
            td: _whichDropDown == "exponential"
                ? info.exponential
                : info.simple),
      ],
    );
  }
}
