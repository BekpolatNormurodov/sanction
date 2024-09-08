import 'dart:io';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl.dart';
import 'package:sanctions/helpers/invoice.dart';
import 'package:sanctions/helpers/pdf_helper.dart';

class InvoiceHelper {
  static Future<File> generate(Invoice invoice) async {
    final pdf = Document();
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
          Image(
            MemoryImage(logoPng),
          ),
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

    return await PdfHelper.saveDocument(
        name: '${invoice.fullname}.pdf', pdf: pdf);
  }
}
