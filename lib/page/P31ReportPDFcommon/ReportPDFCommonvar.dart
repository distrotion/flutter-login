import 'package:fl_chart/fl_chart.dart';

class ReportPDFCommonvar {
  static bool iscontrol = false;
  static bool canf = true;
  static String PO = '';
  static bool HIDEDATAPIC = false;

  static String STATUS = '';

  static String CUSTOMER = '';
  static String PROCESS = '';
  static String PARTNAME = '';
  static String PARTNO = '';
  static String CUSLOT = '';
  static String TPKLOT = '';
  static String MATERIAL = '';
  static String QTY = '';

  static String TPKLOTEDIT = '';

  static String PICstd = '';
  static String PIC01 = '';
  static String PIC02 = '';
  static String TYPE = '-';
  static String SCMASKTYPE = "";
  static String SCMASKTYPEonTop = '';
  static List<rawlist> rawlistHardness = [];
  static List<rawlist> rawlistCompound = [];
  static List<rawlist> rawlistRoughness = [];
  static List<rawlist> rawlistCORE = [];

  //rawlistCORE

  static List<rawlist> rawlistGraph = [];
  static rawlist rawlistGraphCore = rawlist();

  static String remark = '';

  static String PASS = '';

  static String commp = 'Compound layer';

  static String INC01 = '';
  static String INC02 = '';

  static String SignInsBy = '';

  static List<ReportPDFCommonlist> datalist = [
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
  ];
  static List<FlSpot> graphupper = [];
  static List<FlSpot> graphdata = [];
  static List<FlSpot> graphdata2 = [];
  static List<FlSpot> graphdata3 = [];
  static List<FlSpot> graphdata4 = [];
  static List<FlSpot> graphunder = [];
}

class ReportPDFCommonlist {
  ReportPDFCommonlist({
    this.ITEM = '',
    this.ITEMname = '',
    this.METHOD = '',
    this.METHODname = '',
    this.SCMARK = '',
    this.FREQ = '',
    this.SPECIFICATION = '',
    this.SPECIFICATIONname = '',
    this.SPECIFICATIONve = '',
    this.RESULT = '',
    this.CONTROLlimmit = '',
    this.DATA01 = '',
    this.DATA02 = '',
    this.DATA03 = '',
    this.DATAAVG = '',
    this.REMARK = '',
  });
  String ITEM;
  String ITEMname = '';
  String METHOD = '';
  String METHODname = '';
  String SCMARK = '';
  String FREQ = '';
  String SPECIFICATION = '';
  String SPECIFICATIONname = '';
  String SPECIFICATIONve = '';
  String RESULT = '';
  String CONTROLlimmit = '';
  String DATA01 = '';
  String DATA02 = '';
  String DATA03 = '';
  String DATAAVG = '';
  String REMARK = '';
}

class rawlist {
  rawlist({
    this.DATANO = '',
    this.DATAPCS = '',
    this.DATA = '',
  });
  String DATANO;
  String DATAPCS = '';
  String DATA = '';
}

ReportPDFACTclear() {
  ReportPDFCommonvar.PO = '';

  ReportPDFCommonvar.CUSTOMER = '';
  ReportPDFCommonvar.PROCESS = '';
  ReportPDFCommonvar.PARTNAME = '';
  ReportPDFCommonvar.PARTNO = '';
  ReportPDFCommonvar.CUSLOT = '';
  ReportPDFCommonvar.TPKLOT = '';
  ReportPDFCommonvar.MATERIAL = '';
  ReportPDFCommonvar.QTY = '';

  ReportPDFCommonvar.PICstd = '';
  ReportPDFCommonvar.PIC01 = '';
  ReportPDFCommonvar.PIC02 = '';

  ReportPDFCommonvar.SignInsBy = '';
  ReportPDFCommonvar.datalist = [
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
    ReportPDFCommonlist(),
  ];
}
