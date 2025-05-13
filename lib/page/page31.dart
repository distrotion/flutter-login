import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'P31ReportPDFcommon/ReportPDFCommonMain.dart';

class Page31 extends StatelessWidget {
  const Page31({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page31Body();
  }
}

class Page31Body extends StatelessWidget {
  Page31Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReportPDFCommon();
  }
}
