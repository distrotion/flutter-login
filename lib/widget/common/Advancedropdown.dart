import 'package:flutter/material.dart';

class AdvanceDropDown extends StatefulWidget {
  AdvanceDropDown({
    Key? key,
    this.listdropdown,
    required this.onChangeinside,
    required this.value,
    required this.width,
    required this.height,
    this.hint,
  }) : super(key: key);
  List<MapEntry<String, String>>? listdropdown;
  Function onChangeinside;
  String value;
  double width;
  double height;
  String? hint;

  @override
  State<AdvanceDropDown> createState() => _AdvanceDropDownState();
}

class _AdvanceDropDownState extends State<AdvanceDropDown> {
  String? _showstr;
  @override
  Widget build(BuildContext context) {
    List<MapEntry<String, String>> _listdropdown =
        widget.listdropdown ?? []; //MapEntry("", "")

    //AdvanceDropDownOB(text: "DYNAMIC", value: "DYNAMIC-V")
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text(""), value: "")
    ];

    List outputZ = [];

    List outputR = [
      for (int i = 0; i < _listdropdown.length; i++)
        DropdownMenuItem(
          value: _listdropdown[i].value,
          child: Text(_listdropdown[i].key.toString()),
        )
    ];

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        // borderRadius: BorderRadius.all(Radius.circular(10)),
        // disabledHint: Text("123"),
        hint: Text(widget.hint ?? 'Select something'),
        // disabledHint: Text("Disable Hint"),
        value: _showstr,
        isExpanded: true,
        // iconDisabledColor: Colors.transparent,
        // iconEnabledColor: Colors.transparent,
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
            widget.value = newValue;
            _showstr = newValue;
          });
        },

        items: [
          for (int i = 0; i < _listdropdown.length; i++)
            DropdownMenuItem(
              value: _listdropdown[i].value,
              child: Text(_listdropdown[i].key.toString()),
            )
        ],
      ),
    );
  }
}


// for (MapEntry<String, String> e in widget.listdropdown!.entries)
//             DropdownMenuItem(
//               value: e.value,
//               child: Text(e.key.toString()),
//             )