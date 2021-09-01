import 'package:flutter/material.dart';

class TableHeading extends StatelessWidget {
  final String h1, h2, h3;
  const TableHeading({Key key, this.h1, this.h2, this.h3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xFF121212)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            h1,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            h2,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            h3,
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
