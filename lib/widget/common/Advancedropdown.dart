import 'package:flutter/material.dart';

import '../../styles/TextStyle.dart';
import 'ComSpace.dart';

class AdvanceDropDown extends StatefulWidget {
  AdvanceDropDown({
    Key? key,
    this.listdropdown,
    required this.onChangeinside,
    required this.value,
    required this.width,
    required this.height,
    this.hint,
    this.borderRaio,
    this.imgpath,
    this.sLabel = "",
    this.borderCO,
    this.BgCO,
    this.sLabelCO,
    this.sLabelFS,
    this.startedge,
    this.isEnable,
  }) : super(key: key);
  List<MapEntry<String, String>>? listdropdown;
  Function onChangeinside;
  Function? getkey;
  String value;
  double width;
  double height;
  String? hint;
  Color? borderCO;
  Color? BgCO;
  Color? sLabelCO;
  double? sLabelFS;
  double? borderRaio;

  double? startedge;
  String? imgpath;
  bool? isEnable;
  final String sLabel;

  @override
  State<AdvanceDropDown> createState() => _AdvanceDropDownState();
}

class _AdvanceDropDownState extends State<AdvanceDropDown> {
  String? _showstr;
  String? _showstrKEY;
  @override
  Widget build(BuildContext context) {
    List<MapEntry<String, String>> _listdropdown =
        widget.listdropdown ?? []; //MapEntry("", "")

    //AdvanceDropDownOB(text: "DYNAMIC", value: "DYNAMIC-V")
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text(""), value: "")
    ];

    List outputZ = [];
    if (widget.value != '') {
      _showstr = widget.value;
    }

    List outputR = [
      for (int i = 0; i < _listdropdown.length; i++)
        DropdownMenuItem(
          value: _listdropdown[i].value,
          child: Text(_listdropdown[i].key.toString()),
        )
    ];
    String _img = widget.imgpath ?? '';

    return Column(
      children: [
        if (widget.sLabel.isNotEmpty) const ComSpaceHeight(nHeight: 8),
        if (widget.sLabel.isNotEmpty)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(widget.sLabel,
                style: TxtStyle(
                    color: widget.sLabelCO ?? CustomTheme.colorGrey,
                    fontSize: widget.sLabelFS ?? 10)),
          ),
        if (widget.sLabel.isNotEmpty) const ComSpaceHeight(nHeight: 4),
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.isEnable ?? false
                ? Color(0xffededed)
                : widget.BgCO ?? Colors.white,
            border: Border.all(color: widget.borderCO ?? Colors.blueAccent),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRaio ?? 8.0)),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                start: widget.startedge ?? 5, end: 5),
            child: DropdownButton<String>(
              // borderRadius: BorderRadius.all(Radius.circular(10)),
              // disabledHint: Text("123"),
              hint: Text(widget.hint ?? 'Select something'),
              // disabledHint: Text("Disable Hint"),
              value: _showstr,
              isExpanded: true,
              // iconDisabledColor: Colors.transparent,
              // iconEnabledColor: Colors.transparent,

              icon: _img != ''
                  ? Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(_img), fit: BoxFit.fitHeight),
                      ),
                    )
                  : null,
              // iconSize: 24,
              // elevation: 16,

              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: widget.isEnable ?? false
                  ? null
                  : (String? newValue) {
                      setState(() {
                        widget.onChangeinside(newValue!, _showstrKEY);
                        widget.value = newValue;
                        _showstr = newValue;
                      });
                    },

              items: [
                for (int i = 0; i < _listdropdown.length; i++)
                  DropdownMenuItem(
                    onTap: () {
                      setState(() {
                        _showstrKEY = _listdropdown[i].key.toString();
                      });
                    },
                    value: _listdropdown[i].value,
                    child: Text(_listdropdown[i].key.toString()),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


// for (MapEntry<String, String> e in widget.listdropdown!.entries)
//             DropdownMenuItem(
//               value: e.value,
//               child: Text(e.key.toString()),
//             )