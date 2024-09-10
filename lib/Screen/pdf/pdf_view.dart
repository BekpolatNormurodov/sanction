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
    final pdf = Document(title: 'Bek');
    final text = "aaaaaaaaaaaaaaaaa bbbbbbbbbbbbbbbb";
    final logoPng = (await rootBundle.load('assets/images/IIV-logo.png'))
        .buffer
        .asUint8List();

    pdf.addPage(
      MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => [
          Image(
            MemoryImage(logoPng),
          ),
          Image(
            MemoryImage(logoPng),
          ),
         Text(text),
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
        name: '${model.fullname}.pdf', pdf: pdf);
  }
}
