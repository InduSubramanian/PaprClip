import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final List<String> items;
  final Function checkDropdown;
  // final String val;
  const DropDown({Key key, @required this.items, @required this.checkDropdown})
      : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String _dropDownval;

  @override
  void initState() {
    _dropDownval = widget.items[0];
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.only(left: 10, right: 5),
      decoration: BoxDecoration(
          color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
      alignment: Alignment.center,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: _dropDownval,
            dropdownColor: Color(0xFF121212),
            // items: [
            //   DropdownMenuItem<String>(
            //       //  onTap: ,
            //       value: "Exponential",
            //       child: Text(
            //         "Exponential",
            //         style: Theme.of(context).textTheme.subtitle2,
            //       )),
            //   DropdownMenuItem<String>(
            //       value: "Simple",
            //       child: Text(
            //         "Simple",
            //         style: Theme.of(context).textTheme.subtitle2,
            //       ))
            // ],
            items: widget.items.map((itemName) {
              print(itemName);
              return DropdownMenuItem(
                value: itemName,
                child: Text(
                  itemName,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              );
            }).toList(),
            isExpanded: true,
            icon: Image.asset("./assets/icons/dropdown_arrow_white.png"),
            onChanged: (String val) {
              setState(() {
                print("Setting state: $val");
                _dropDownval = val.toString();
                widget.checkDropdown(_dropDownval);
                print(_dropDownval);
              });
            }),
      ),
      //   ],
      // ),
    );
  }
}
