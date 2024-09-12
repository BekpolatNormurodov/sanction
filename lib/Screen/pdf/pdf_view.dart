import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:intl/intl.dart' as intl;
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:sanctions/Screen/pdf/pdf_model.dart';
import 'package:sanctions/Screen/pdf/pdf_save.dart';

class PdfView {
  static Future<File> generate(PdfModel model) async {
    final pdf = Document();
    final ttfData =
        await rootBundle.load("assets/fonts/NotoSerif-VariableFont_wdth.ttf");
    final uzFont = Font.ttf(ttfData);
    final ttfDataBold =
        await rootBundle.load("assets/fonts/NotoSerif_Condensed-Bold.ttf");
    final uzFontBold = Font.ttf(ttfDataBold);
    // final logoPng = (await rootBundle.load('assets/images/IIV-logo.png'))
    //     .buffer
    //     .asUint8List();

    pdf.addPage(
      MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: EdgeInsets.only(left: 56, right: 32, top: 36, bottom: 30),
        header: (context) => Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 36),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "#\n\n#",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                              color: PdfColors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 4, bottom: 12),
                            child: Text(
                              "«ТАСДИҚЛАЙМАН»",
                              style: TextStyle(
                                font: uzFontBold,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            "Навоий вилояти ИИБ бошлиғининг биринчи ўринбосари подполковник",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 24),
                          Text(
                            " ________________Б.Ж.Ахмедов",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            " 2024 йил «______» ceнтябpь",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Банк сирини ташкил этувчи маълумотлар олишга қаратилган тезкор-қидирув  тадбирини  ўтказишга",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 4, bottom: 14),
                            child: Text(
                              "«САНКЦИЯ БЕРАМАН»",
                              style: TextStyle(
                                font: uzFontBold,
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            "Навоий вилояти прокурорининг ўринбосари адлия катта маслаҳатчиси",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 24),
                          Text(
                            " ________________P.H.Рахматов",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            " 2024 йил «______» ceнтябpь",
                            style: TextStyle(
                              font: uzFontBold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
               Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 24),
                child: Text(
                  "Қ A P O P\n Банк сирини ташкил этувчи маълумотлар олишга қаратилган тезкор-қидиpyв тадбирини ўтказиш ҳақида",
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        build: (context) => [
          RichText(
              text: TextSpan(
            children: [
             
            ],
          ))
        ],
      ),
    );

    pdf.addPage(
      Page(
        build: (Context context) => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.0),
              Text(
                "Sertifikatda ko'rsatilgan tovar siz sotib olayotgan tovarga mosligini aniq tekshirib oling.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 8.0,
                ),
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );

    return await PdfSave.saveDocument(
        name: '${model.phoneNumber}.pdf', pdf: pdf);
  }
}
