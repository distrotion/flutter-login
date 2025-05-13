import 'package:flutter/material.dart';

import '../widget/ReportComponent/CommonReport.dart';

class headerreport extends StatelessWidget {
  headerreport({
    super.key,
    this.CUSTOMER,
    this.PROCESS,
    this.PARTNAME,
    this.PARTNO,
    this.CUSLOT,
    this.TPKLOT,
    this.MATERIAL,
    this.QTY,
  });
  String? CUSTOMER;
  String? PROCESS;
  String? PARTNAME;
  String? PARTNO;
  String? CUSLOT;
  String? TPKLOT;
  String? MATERIAL;
  String? QTY;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HEAD3SLOT(
          ListFlex: const [5, 4, 1],
          widget01: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 120,
                  width: 230,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/logoonly_tpkpng.png",
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              // PicShow(
              //     width: 120, height: 230, base64: tpklogo),
              SizedBox(
                height: 120,
                width: 400,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                        "THAI PARKERIZING CO.,LTD.",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                      ),
                      child: Text(
                        "Heat & Surface Treatment Division",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          widget02: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Colors.black,
                          width: 3,
                          style: BorderStyle.solid),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "Quality Testing Report",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30, bottom: 0),
                              child: Text(
                                "(ใบรายงานผลการตรวจสอบผลิตภัณฑ์สำหรับกระบวนการ GAS)",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      "FR-HQC-03/025-00-05/11/20",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          widget03: Row(
            children: [
              Expanded(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                      ),
                      child: Text(
                        "PAGE",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: Text(
                        "1/1",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        HEAD4SLOT(
          ListFlex: [4, 8, 3, 5],
          widget01: const Center(
            child: Text(
              "Customer",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget02: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                // ReportPDFCommonvar.CUSTOMER,
                CUSTOMER ?? '',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          widget03: const Center(
            child: Text(
              "Process",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget04: Center(
            child: Text(
              // ReportPDFCommonvar.PROCESS,
              PROCESS ?? '',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        BODY4SLOT(
          ListFlex: [4, 8, 3, 5],
          widget01: const Center(
            child: Text(
              "Part Name",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget02: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                // ReportPDFCommonvar.PARTNAME,
                PARTNAME ?? '',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          widget03: const Center(
            child: Text(
              "Part No.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget04: Center(
            child: Text(
              // ReportPDFCommonvar.PARTNO,
              PARTNO ?? '',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        BODY2SLOT(
          ListFlex: [4, 16],
          widget01: const Center(
            child: Text(
              "Customer Lot No.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget02: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                // ReportPDFCommonvar.CUSLOT,
                CUSLOT ?? '',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        BODY6SLOT(
          ListFlex: [4, 6, 3, 3, 1, 3],
          widget01: const Center(
            child: Text(
              "TPK. Lot No.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget02: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                // ReportPDFCommonvar.TPKLOTEDIT == ''
                //     ? ReportPDFCommonvar.TPKLOT
                //     : ReportPDFCommonvar.TPKLOTEDIT,
                TPKLOT ?? '',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          widget03: const Center(
            child: Text(
              "Material",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget04: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // if (ReportPDFCommonvar.SCMASKTYPEonTop != '') ...[
              //   PicShow(
              //       width: 42,
              //       height: 42,
              //       base64: ReportPDFCommonvar.SCMASKTYPEonTop),
              // ],
              Text(
                // ReportPDFCommonvar.MATERIAL,
                MATERIAL ?? '',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          widget05: const Center(
            child: Text(
              "Qty.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          widget06: Center(
            child: Text(
              // ReportPDFCommonvar.QTY,
              QTY ?? '',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
