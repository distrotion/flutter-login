import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../styles/TextStyle.dart';
import 'ComSpace.dart';
import 'LayoutAlignWithFullWidth.dart';

enum enumInputTextStateList {
  inputText, // normal mode
  readOnly, //for dropdown. cannot input but not grey color
  disable, //grey color
}

enum enumInputBindList {
  none,
}

class ComInputText extends StatefulWidget {
  ComInputText({
    Key? key,
    this.sValue = "",
    this.nId = 0,
    this.inputBind = enumInputBindList.none,
    this.funcOnChange,
    this.sLabel = "",
    this.sPlaceholder = "",
    this.nFontSize = 16,
    this.nLimitedChar = 20,
    this.isNumberOnly = false,
    this.isEmail = false,
    this.isPassword = false,
    this.isShowDropdownIcon = false,
    this.funcValidation,
    this.InputTextState = enumInputTextStateList.inputText,
    this.isForceShowError = false,
    this.sAutofillHints,
    this.isEnabled,
    required this.isContr,
    this.fnContr,
    this.height,
    this.width,
    this.iconheight,
    this.iconwidth,
    this.isSideIcon,
    //
    this.borderR,
    this.BgCO,
    this.sLabelCO,
    this.sLabelFS,
    required this.returnfunc,
    this.maxline,
    this.keyboardtype,
  }) : super(key: key);

  final String sValue; // value inside text
  final int nId; //for some page may need id. if not use, just put 0
  final enumInputBindList inputBind;
  final Function?
      funcOnChange; // on edit end. (not focus). return sValue, nId ,inputBind

  //option
  final String sLabel; // text at top left above text field
  final String sPlaceholder;
  final double nFontSize;
  final int nLimitedChar;
  final bool isNumberOnly;
  final bool isEmail; // just show icon for validation. not check validation
  final bool isPassword; // true = **** and got icon to show pass
  final bool isShowDropdownIcon; // only for enumInputTextStateList.readOnly
  final Function? funcValidation; //  null = no validation
  final String? sAutofillHints; // ex: AutofillHints.username
  final bool? isEnabled;
  final Function? fnContr;
  Function returnfunc;

  final bool? isSideIcon;
  final bool? isContr;
  final double? height;
  final double? width;
  final double? iconheight;
  final double? iconwidth;

  int? maxline;
  double? borderR;
  Color? BgCO;
  Color? sLabelCO;
  double? sLabelFS;

  TextInputType? keyboardtype;

  //state
  final enumInputTextStateList InputTextState;
  final bool
      isForceShowError; //false = never show error from GlobalVar.isShowErrorOnAllInputTextField = true

  @override
  _ComInputTextState createState() => _ComInputTextState();
}

class _ComInputTextState extends State<ComInputText> {
  TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isHidePassword = true; //use for isPassword = true;
  bool _isError = false;
  bool _isHideIconOnFocus = true;

  bool _funcValidation(String s) {
    return widget.funcValidation!(s);
  }

  bool ValidationCurrentText(String s) {
    //return (widget.funcValidation == null ? true : false) ? false : _funcValidation(_controller.value.text);
    if (widget.funcValidation == null) {
      return true;
    } else {
      //print(s);
      //print(_funcValidation(s));
      return _funcValidation(s);
    }
  }

  @override
  void initState() {
    super.initState();
    //get-set text value

    _controller.value = TextEditingValue(
      text: widget.sValue,
      selection: TextSelection.fromPosition(
        TextPosition(offset: widget.sValue.length),
      ),
    );

    //focus ev for validation
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        _isError = !ValidationCurrentText(_controller.value.text);
        widget.fnContr!(false);
        setState(() {});
        _isHideIconOnFocus = false;
      } else {
        _isError = false; //clear when input again
        widget.fnContr!(false);
        setState(() {});
      }
    });
    if (!widget.isPassword) {
      _isHidePassword = false;
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isForceShowError) {
      if (widget.InputTextState == enumInputTextStateList.inputText) {
        _isError = !ValidationCurrentText(_controller.value.text);
        setState(() {});
      } else if (widget.InputTextState == enumInputTextStateList.readOnly) {
        _isError = !ValidationCurrentText(widget.sValue);
        setState(() {});
      }
    }

    void showHidePassowrd() {
      _isHidePassword = !_isHidePassword;
      setState(() {});
    }

    String getCorrectIconEmail_ImgPath() {
      if (_isError) {
        return 'assets/icons/icon-wrong@2x.png';
      } else {
        return 'assets/icons/icon-correct@2x-green.png';
      }
    }

    String getShowHidePassword_ImgPath() {
      if (_isHidePassword) {
        return 'assets/icons/icon-eyeclose@3x.png';
      } else {
        return 'assets/icons/icon-eye@3x.png';
      }
    }

    Widget? wIconRightSide() {
      if (widget.isPassword) {
        return InkWell(
          onTap: showHidePassowrd,
          child: Padding(
            padding: const EdgeInsets.only(
                right: 12.0, left: 12, top: 8.0, bottom: 8.0),
            child: SizedBox(
              height: widget.iconheight ?? 24,
              width: widget.iconwidth ?? 24,
              child: _isHidePassword == false
                  ? const Icon(
                      Icons.visibility,
                      color: Colors.black,
                    )
                  : const Icon(
                      Icons.visibility_off,
                      color: Colors.black,
                    ),
            ),
          ),
        );
      } else if (widget.isSideIcon ?? false) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(
                right: 12.0, left: 12, top: 8.0, bottom: 8.0),
            child: Container(
              height: widget.iconheight ?? 24,
              width: widget.iconwidth ?? 24,
              child: const Icon(Icons.search),
            ),
          ),
        );
      } else {
        return null;
      }
    }

    //--------------------------------------------------------------------------------------------------------
    Color cBorder;
    if (_isError) {
      cBorder = CustomTheme.colorRedError;
    } else {
      cBorder = CustomTheme.colorGreyLight;
    }

    Widget wInputText() {
      void _onChange(String s) {
        return widget.funcOnChange!(s, widget.nId, widget.inputBind);
      }

      String sAutofillHints;
      if (widget.sAutofillHints == null) {
        sAutofillHints = "";
      } else {
        sAutofillHints = widget.sAutofillHints.toString();
      }
      bool _isContr = widget.isContr ?? false;
      if (_isContr) {
        _controller.text = widget.sValue; //mo
      } else {}

      bool _isEnabled = widget.isEnabled ?? true;

      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widget.borderR ?? 0)),
          color: _isEnabled ? widget.BgCO ?? Colors.white : Color(0xffededed),
        ),
        height: widget.height ?? 32,
        width: widget.width ?? 100,
        child: TextFormField(
          keyboardType: widget.keyboardtype ?? TextInputType.multiline,
          maxLines: widget.maxline ?? 1,
          controller: _controller,
          onChanged: (s) {
            widget.returnfunc(s);
          },
          focusNode: _focusNode,
          cursorColor: CustomTheme.colorGrey,
          obscureText: _isHidePassword,
          enabled: _isEnabled,
          style: TxtStyle(fontSize: widget.nFontSize),
          inputFormatters: [
            LengthLimitingTextInputFormatter(widget.nLimitedChar),
            if (widget.isNumberOnly == true)
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,5}')),
          ],
          decoration: InputDecoration(
            hintText: widget.sPlaceholder,
            hintStyle: TxtStyle(
              fontSize: widget.nFontSize,
              color: CustomTheme.colorGreyDisable,
            ),
            border: const OutlineInputBorder(
                // borderRadius:
                //     const BorderRadius.all(const Radius.circular(8.0)),
                ),
            contentPadding:
                const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: cBorder),
              // borderRadius: BorderRadius.circular(8)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: CustomTheme.colorGreyDisable),
              // borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: wIconRightSide(),
          ),
        ),
      );
    }

    String GetCurrentText() {
      if (!widget.isPassword) {
        return widget.sValue.toString();
      } else {
        return "*******";
      }
    }

    Widget wInputReadOnly(Color cBg, Color cBorder) {
      return Container(
        height: widget.height ?? 32,
        decoration: BoxDecoration(
          color: cBg,
          // borderRadius: BorderRadius.circular(8),
          border: Border.all(color: cBorder),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 4, bottom: 8, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                GetCurrentText(),
                style: TxtStyle(
                    fontSize: widget.nFontSize, color: CustomTheme.colorDark),
              ),
              if (widget.isShowDropdownIcon)
                SizedBox(
                    width: 16,
                    child: Image.asset('assets/icons/icon-down@3x.png')),
            ],
          ),
        ),
      );
    }

    Widget wInputDisable(Color cBg) {
      return Container(
        height: widget.height ?? 24,
        decoration: BoxDecoration(
          color: cBg,
          // borderRadius: BorderRadius.circular(8),
          border: Border.all(color: CustomTheme.colorGreyLight),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 8.0, left: 16.0),
          child: LayoutAlignWithFullWidth(
              widget: Text(
                GetCurrentText(),
                style: TxtStyle(
                    fontSize: widget.nFontSize,
                    color: CustomTheme.colorGreyDisable),
              ),
              align: Alignment.centerLeft),
        ),
      );
    }

    //--------------------------------------------------------------------------------------
    //Body
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (widget.sLabel.isNotEmpty) const ComSpaceHeight(nHeight: 8),
      if (widget.sLabel.isNotEmpty)
        Text(widget.sLabel,
            style: TxtStyle(
                color: widget.sLabelCO ?? CustomTheme.colorGrey,
                fontSize: widget.sLabelFS ?? 10)),
      if (widget.sLabel.isNotEmpty) const ComSpaceHeight(nHeight: 4),
      if (widget.InputTextState == enumInputTextStateList.inputText)
        wInputText(), //inputText, can show error
      if (widget.InputTextState == enumInputTextStateList.readOnly)
        wInputReadOnly(CustomTheme.colorWhite,
            cBorder), //readOnly, can show errorwInputReadOnly();
      if (widget.InputTextState == enumInputTextStateList.disable)
        wInputDisable(CustomTheme.colorGreyLight), //disable
    ]);
    //--------------------------------------------------------------------------------------
  }
}
