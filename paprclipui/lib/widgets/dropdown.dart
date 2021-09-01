import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  final String val;
  const DropDown({Key key, this.val}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      decoration: BoxDecoration(
          color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            val,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Image.asset("./assets/icons/dropdown_arrow_white.png"),
        ],
      ),
    );
  }
}
