import 'package:flutter/material.dart';

import '../../styles/TextStyle.dart';
import 'ComSpace.dart';

class EasyDropDown extends StatefulWidget {
  EasyDropDown({
    Key? key,
    required this.listdropdown,
    required this.onChangeinside,
    required this.value,
    required this.width,
    required this.height,
    this.borderCO,
    this.borderRaio,
    this.imgpath,
    this.sLabel = "",
  }) : super(key: key);
  List<String> listdropdown;
  Function onChangeinside;
  String value;
  double width;
  double height;
  Color? borderCO;
  double? borderRaio;
  String? imgpath;
  final String sLabel;

  @override
  State<EasyDropDown> createState() => _EasyDropDownState();
}

class _EasyDropDownState extends State<EasyDropDown> {
  @override
  Widget build(BuildContext context) {
    String _img = widget.imgpath ?? '';
    return Column(
      children: [
        if (widget.sLabel.isNotEmpty) const ComSpaceHeight(nHeight: 8),
        if (widget.sLabel.isNotEmpty)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(widget.sLabel,
                style: TxtStyle(color: CustomTheme.colorGrey, fontSize: 10)),
          ),
        if (widget.sLabel.isNotEmpty) const ComSpaceHeight(nHeight: 4),
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            border: Border.all(color: widget.borderCO ?? Colors.blueAccent),
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRaio ?? 8.0)),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            // borderRadius: BorderRadius.all(Radius.circular(10)),
            value: widget.value,
            // iconDisabledColor: Colors.transparent,
            // iconEnabledColor: Colors.transparent,
            // icon: const Icon(Icons.arrow_downward),
            // iconSize: 24,
            // elevation: 16,
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
            items: widget.listdropdown
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
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