import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/movingAverageScreen.dart';
import '../screens/oscillatorScreen.dart';
import '../screens/pivotScreen.dart';
import '../providers/data.dart';

import '../widgets/header.dart';

import '../widgets/indicationbar.dart';
import '../widgets/summaryopt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bool _isInit = true;

  // @override
  // void didChangeDependencies() {
  //   if (_isInit) {
  //     Provider.of<DataSet>(context).setData("1min");
  //     _isInit = false;
  //     print(_isInit);
  //   }
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: Provider.of<DataSet>(context, listen: false).setData("1min"),
      builder: (context, AsyncSnapshot<String> snapshot) {
        print(snapshot.connectionState);
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Text("Please wait it's loading"),
              ),
            ),
          );
        } else {
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
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
                      SizedBox(
                        height: 30,
                      ),
                      MovingAverageScreen(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Oscillators",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      OscillatorScreen(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Pivot points",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      PivotScreen(),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
