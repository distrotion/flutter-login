class FINALCHECKlistCommonClass {
  FINALCHECKlistCommonClass({
    this.NO = 0,
    this.TYPE = '',
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
    this.datapackset = const [],
    this.LOAD = '',
    this.Cross = '',
    this.Remark = '',
    this.SRAWDATA = '',
    this.RESULTDSW = '',
    //
  });
  int NO;
  String TYPE;
  String ITEM;
  String ITEMname;
  String METHOD;
  String METHODname;
  String SCMARK;
  String FREQ;
  String SPECIFICATION;
  String SPECIFICATIONname;
  String SPECIFICATIONve;
  String RESULT;
  String CONTROLlimmit;
  List<datainlist> datapackset;
  String LOAD;
  String Cross;
  String Remark;
  String SRAWDATA;
  String RESULTDSW;
//
}

// class datainlist {
//   datainlist({
//     this.dimensionX = 0,
//     this.dimensionY = 0,
//     this.DATA01 = '',
//     this.DATA02 = '',
//     this.DATA03 = '',
//     this.DATA04 = '',
//     this.DATA05 = '',
//     this.DATA06 = '',
//     this.DATA07 = '',
//     this.DATA08 = '',
//     this.DATA09 = '',
//     this.DATA10 = '',
//     this.DATA11 = '',
//     this.DATA12 = '',
//     this.DATA13 = '',
//     this.DATA14 = '',
//     this.DATA15 = '',
//     this.DATA16 = '',
//     this.DATA17 = '',
//     this.DATA18 = '',
//     this.DATA19 = '',
//     this.DATA20 = '',
//     this.DATAAVG = '',
//   });

//   int dimensionX;
//   int dimensionY;

//   String DATA01;
//   String DATA02;
//   String DATA03;
//   String DATA04;
//   String DATA05;
//   String DATA06;
//   String DATA07;
//   String DATA08;
//   String DATA09;
//   String DATA10;
//   String DATA11;
//   String DATA12;
//   String DATA13;
//   String DATA14;
//   String DATA15;
//   String DATA16;
//   String DATA17;
//   String DATA18;
//   String DATA19;
//   String DATA20;
//   String DATAAVG;
// }

class datainlist {
  datainlist({
    this.TYPE = '',
    this.dimensionX = 0,
    this.dimensionY = 0,
    this.DATA01 = '',
    this.DATA02 = '',
    this.DATA03 = '',
    this.DATA04 = '',
    this.DATA05 = '',
    this.DATA06 = '',
    this.DATA07 = '',
    this.DATA08 = '',
    this.DATA09 = '',
    this.DATA10 = '',
    this.DATA11 = '',
    this.DATA12 = '',
    this.DATA13 = '',
    this.DATA14 = '',
    this.DATA15 = '',
    this.DATA16 = '',
    this.DATA17 = '',
    this.DATA18 = '',
    this.DATA19 = '',
    this.DATA20 = '',
    this.DATA01p = '',
    this.DATA02p = '',
    this.DATA03p = '',
    this.DATA04p = '',
    this.DATA05p = '',
    this.DATA06p = '',
    this.DATA07p = '',
    this.DATA08p = '',
    this.DATA09p = '',
    this.DATA10p = '',
    this.DATA11p = '',
    this.DATA12p = '',
    this.DATA13p = '',
    this.DATA14p = '',
    this.DATA15p = '',
    this.DATA16p = '',
    this.DATA17p = '',
    this.DATA18p = '',
    this.DATA19p = '',
    this.DATA20p = '',
    this.DATAAVG = '',
    this.DATA01c = '',
    this.DATA02c = '',
    this.DATA03c = '',
    this.DATA04c = '',
    this.DATA05c = '',
    this.DATA06c = '',
    this.DATA07c = '',
    this.DATA08c = '',
    this.DATA09c = '',
    this.DATA10c = '',
    this.DATA11c = '',
    this.DATA12c = '',
    this.DATA13c = '',
    this.DATA14c = '',
    this.DATA15c = '',
    this.DATA16c = '',
    this.DATA17c = '',
    this.DATA18c = '',
    this.DATA19c = '',
    this.DATA20c = '',
  });
  String TYPE;
  int dimensionX;
  int dimensionY;

  String DATA01;
  String DATA02;
  String DATA03;
  String DATA04;
  String DATA05;
  String DATA06;
  String DATA07;
  String DATA08;
  String DATA09;
  String DATA10;
  String DATA11;
  String DATA12;
  String DATA13;
  String DATA14;
  String DATA15;
  String DATA16;
  String DATA17;
  String DATA18;
  String DATA19;
  String DATA20;
  String DATA01p;
  String DATA02p;
  String DATA03p;
  String DATA04p;
  String DATA05p;
  String DATA06p;
  String DATA07p;
  String DATA08p;
  String DATA09p;
  String DATA10p;
  String DATA11p;
  String DATA12p;
  String DATA13p;
  String DATA14p;
  String DATA15p;
  String DATA16p;
  String DATA17p;
  String DATA18p;
  String DATA19p;
  String DATA20p;
  String DATAAVG;

  String DATA01c;
  String DATA02c;
  String DATA03c;
  String DATA04c;
  String DATA05c;
  String DATA06c;
  String DATA07c;
  String DATA08c;
  String DATA09c;
  String DATA10c;
  String DATA11c;
  String DATA12c;
  String DATA13c;
  String DATA14c;
  String DATA15c;
  String DATA16c;
  String DATA17c;
  String DATA18c;
  String DATA19c;
  String DATA20c;
}

class BasicCommonDATA {
  BasicCommonDATA({
    this.PO = '',
    this.CP = '',
    this.CUSTOMER = '',
    this.PROCESS = '',
    this.PARTNAME = '',
    this.PARTNO = '',
    this.CUSLOT = '',
    this.TPKLOT = '',
    this.MATERIAL = '',
    this.QTY = '',
    this.UNITSAP = '',
    this.PICstd = '',
    this.PIC01 = '',
    this.PIC02 = '',
    this.PIC03 = '',
    this.PARTNAMEref = '',
    this.PARTref = '',
    this.PASS = '',
    this.INC01 = '',
    this.INC02 = '',
    this.USER_STATUS = '',
    this.reportset = '',
    this.ITEMPIC01 = '',
    this.ITEMPIC02 = '',
    this.ITEMPIC03 = '',
    this.Inspected = '',
    this.Check = '',
    this.Approve = '',
    this.Inspected_sign = '',
    this.Check_sign = '',
    this.Approve_sign = '',
  });

  String PO;
  String CP;
  String CUSTOMER;
  String PROCESS;
  String PARTNAME;
  String PARTNO;
  String CUSLOT;
  String TPKLOT;
  String MATERIAL;
  String QTY;
  String PICstd;
  String UNITSAP;
  String PIC01;
  String PIC02;
  String PIC03;

  String PARTNAMEref;
  String PARTref;

  String PASS;

  String INC01;
  String INC02;

  String USER_STATUS;
  String reportset;

  String ITEMPIC01;
  String ITEMPIC02;
  String ITEMPIC03;

  String Inspected;
  String Check;
  String Approve;

  String Inspected_sign;
  String Check_sign;
  String Approve_sign;
}

class CommonReportOutput {
  CommonReportOutput({
    this.datain = const [],
    required this.databasic,
  });

  List<FINALCHECKlistCommonClass> datain;
  BasicCommonDATA databasic;
}
