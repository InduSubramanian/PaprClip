import "package:flutter/material.dart";

class IndicationBar extends StatelessWidget {
  // final int indicatorPos;
  const IndicationBar({
    Key key,
  }) : super(key: key);

  // double pos;
  // @override
  // void initState() {
  //   super.initState();
  //   if (widget.indicatorPos == 3) {
  //     setState(() {
  //       pos = 140;
  //       print(pos);
  //     });
  //   } else if (widget.indicatorPos == 2) {
  //     setState(() {
  //       pos = 75;
  //       print(pos);
  //     });
  //   } else if (widget.indicatorPos == 1) {
  //     setState(() {
  //       pos = 20;
  //       print(pos);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: size.width * 0.5,
      child: Stack(
        children: [
          Positioned(
            left: 12,
            top: 140,
            child: Container(
              width: 93.02,
              height: 28,
              child: Stack(
                children: [
                  Positioned(
                      // left: 80,
                      child: Image.asset("./assets/icons/Indication.png")),
                  Positioned(
                      top: 5,
                      left: 19,
                      child: Text(
                        "NEUTRAL",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Color(0xFF007AFF),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Container(
                  width: 8,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF007AFF),
                  ),
                ),
              ),
              Container(
                width: 12,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFFFFB946),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Container(
                  width: 8,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF2E50),
                  ),
                ),
              ),
              Container(
                width: 8,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Color(0xFFFF2E50),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
