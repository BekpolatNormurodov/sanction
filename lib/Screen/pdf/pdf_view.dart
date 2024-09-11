import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
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
        await rootBundle.load("assets/fonts/NotoSans_Condensed-Bold.ttf");
    final uzFont = pw.Font.ttf(ttfData);
    // final logoPng = (await rootBundle.load('assets/images/IIV-logo.png'))
    //     .buffer
    //     .asUint8List();

    pdf.addPage(
      MultiPage(
        pageFormat: PdfPageFormat.a4,
        header: (context) => Container(
          child: Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("""
     
     
        “ТАСДИҚЛАЙМАН”

Навоий вилояти ИИБ  бошлиғининг
биринчи ўринбосари подполковник

______________Б.Ж.Ахмедов
2024 йил “_____” август

                              """,
                    style: pw.TextStyle(font: uzFont, fontSize: 13)),
              ),
              Container(
                child: Text("""
Банк    сирини    ташкил    этувчи 
маълумотлар   олишга    қаратилган
тезкор-қидирув тадбирини ўтказишга
      «САНКЦИЯ БЕРАМАН»

Навоий     вилояти    прокурорининг
ўринбосари адлия катта маслаҳатчиси

___________ Р.Н.Рахматов
2024 йил “____” август

                              """,
                    style: pw.TextStyle(font: uzFont, fontSize: 13)),
              ),
            ],
          ),
        ),
        build: (context) => [
          RichText(
              text: TextSpan(
            children: [],
          ))
        ],
      ),
    );

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
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
