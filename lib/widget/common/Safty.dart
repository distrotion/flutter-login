String ConverstStr(String input) {
  if (isNumeric(input)) {
    return input;
  } else {
    return '0';
  }
}

String ConverstStrOne(String input) {
  if (isNumeric(input)) {
    return input;
  } else {
    return '1';
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
