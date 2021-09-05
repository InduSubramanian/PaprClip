import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/pivottable.dart';
import '../widgets/dropdown.dart';
import '../providers/data.dart';

class PivotScreen extends StatefulWidget {
  PivotScreen({Key key}) : super(key: key);

  @override
  _PivotScreenState createState() => _PivotScreenState();
}

class _PivotScreenState extends State<PivotScreen> {
  String _whichDropDown;

  void _checkDropdown(String s) {
    setState(() {
      _whichDropDown = s.toLowerCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    PivotPoints pinfo = Provider.of<DataSet>(context).pivotInfo;
    return Column(
      children: [
        DropDown(
            checkDropdown: _checkDropdown,
            items: ["Classic", "Camarilla", "Demark", "Fibonacci", "Woodie"]),
        PivotTable(
            pivotPoints: _whichDropDown == "classic"
                ? pinfo.classic
                : _whichDropDown == "camarilla"
                    ? pinfo.camarilla
                    : _whichDropDown == "demark"
                        ? pinfo.demark
                        : _whichDropDown == "woodie"
                            ? pinfo.woodie
                            : pinfo.fibonacci),
      ],
    );
  }
}
