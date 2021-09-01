import 'package:flutter/material.dart';

class SalesIndicator extends StatelessWidget {
  final String buy, neutral, sell;
  const SalesIndicator({Key key, this.buy, this.neutral, this.sell})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(children: [
          Text(buy, style: Theme.of(context).textTheme.headline5),
          Text("Buy", style: Theme.of(context).textTheme.headline6)
        ]),
        Column(children: [
          Text(neutral, style: Theme.of(context).textTheme.headline5),
          Text("Neutral", style: Theme.of(context).textTheme.headline6)
        ]),
        Column(children: [
          Text(sell, style: Theme.of(context).textTheme.headline5),
          Text("Sell", style: Theme.of(context).textTheme.headline6)
        ])
      ],
    );
  }
}
