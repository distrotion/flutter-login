import 'package:flutter/material.dart';

class AdvanceDropDown extends StatefulWidget {
  AdvanceDropDown({
    Key? key,
    this.listdropdown,
    required this.onChangeinside,
    required this.value,
    required this.width,
    required this.height,
  }) : super(key: key);
  List<String>? listdropdown;
  Function onChangeinside;
  String value;
  double width;
  double height;

  @override
  State<AdvanceDropDown> createState() => _AdvanceDropDownState();
}

class _AdvanceDropDownState extends State<AdvanceDropDown> {
  @override
  Widget build(BuildContext context) {
    List<String> _listdropdown = widget.listdropdown ?? [''];

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        // borderRadius: BorderRadius.all(Radius.circular(10)),
        value: widget.value,
        iconDisabledColor: Colors.transparent,
        iconEnabledColor: Colors.transparent,
        // icon: const Icon(Icons.arrow_downward),
        // iconSize: 24,
        // elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            widget.onChangeinside(newValue!);
          });
        },
        items: _listdropdown.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}


          // Container(
          //   // color: Colors.red,
          //   height: 24,
          //   width: 24,
          //   child: Padding(
          //     padding: EdgeInsetsDirectional.all(1),
          //     child: const Icon(Icons.arrow_downward),
          //   ),
          // ),