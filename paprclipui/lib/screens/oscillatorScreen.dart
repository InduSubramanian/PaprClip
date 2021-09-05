import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/data.dart';
import '../widgets/primarybutton.dart';
import '../widgets/salesIndicator.dart';
import '../widgets/table2.dart';

class OscillatorScreen extends StatefulWidget {
  OscillatorScreen({Key key}) : super(key: key);

  @override
  _OscillatorScreenState createState() => _OscillatorScreenState();
}

class _OscillatorScreenState extends State<OscillatorScreen> {
  @override
  Widget build(BuildContext context) {
    TechnicalIndicator d = Provider.of<DataSet>(context).oscInfo;
    return Column(
      children: [
        PrimaryButton(c: Color(0xFFFF2E50), val: d.text.toUpperCase()),
        SalesIndicator(buy: d.buy, neutral: d.neutral, sell: d.sell),
        SizedBox(height: 15),
        Table2(
          td: d.td,
        ),
      ],
    );
  }
}
