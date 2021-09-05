import 'package:flutter/material.dart';
import '../providers/data.dart';
import 'package:provider/provider.dart';

class SummaryBtn extends StatelessWidget {
  final String time;
  final String timedataset;
  final Color c;
  final VoidCallback whichButton;
  const SummaryBtn(
      {Key key,
      @required this.time,
      @required this.c,
      this.whichButton,
      @required this.timedataset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataSet d = Provider.of<DataSet>(context, listen: false);
    return GestureDetector(
      onTap: () {
        whichButton();
        d.setData(timedataset);
      },
      child: Padding(
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
      ),
    );
  }
}
