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
  List<AdvanceDropDownOB>? listdropdown;
  Function onChangeinside;
  String value;
  double width;
  double height;

  @override
  State<AdvanceDropDown> createState() => _AdvanceDropDownState();
}

class _AdvanceDropDownState extends State<AdvanceDropDown> {
  String selectedValue = "";
  @override
  Widget build(BuildContext context) {
    List<AdvanceDropDownOB> _listdropdown = widget.listdropdown ?? [];

    //AdvanceDropDownOB(text: "DYNAMIC", value: "DYNAMIC-V")
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text(""), value: "")
    ];

    for (int i = 0; i < _listdropdown.length; i++) {
      menuItems.add(DropdownMenuItem(
          child: Text(_listdropdown[i].text), value: _listdropdown[i].value));
    }

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        // borderRadius: BorderRadius.all(Radius.circular(10)),
        value: selectedValue,
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
          });
        },
        items: menuItems,
      ),
    );
  }
}

class AdvanceDropDownOB {
  AdvanceDropDownOB({required this.text, required this.value});
  String text;
  String value;

  bool selected = false;
}

// List<DropdownMenuItem<String>> get dropdownItems {
//   List<DropdownMenuItem<String>> menuItems = [
//     DropdownMenuItem(child: Text(""), value: ""),
//     DropdownMenuItem(child: Text("USA-T"), value: "USA"),
//     DropdownMenuItem(child: Text("Canada-T"), value: "Canada"),
//     DropdownMenuItem(child: Text("Brazil-T"), value: "Brazil"),
//     DropdownMenuItem(child: Text("England-T"), value: "England"),
//   ];
//   return menuItems;
// }



          // Container(
          //   // color: Colors.red,
          //   height: 24,
          //   width: 24,
          //   child: Padding(
          //     padding: EdgeInsetsDirectional.all(1),
          //     child: const Icon(Icons.arrow_downward),
          //   ),
          // ),