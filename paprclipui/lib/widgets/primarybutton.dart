import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String val;
  final Color c;
  const PrimaryButton({Key key, this.c, this.val}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: c,
      ),
      child: Text(
        val,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
      ),
    );
  }
}
