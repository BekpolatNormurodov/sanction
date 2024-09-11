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
          Text("""
         
         2024 йил 26 август куни соат 13:34да Навбаҳор тумани “Қизилрабод” МФЙда яшовчи 1989 й.т Эргашов Баходир Тоштемирович телефон орқали, турмуш ўртоғи Рўзиқулова Ферузага тегишли 9860 0801 9978 2188 рақамли пластик картаси ҳисобидаги пул маблағлари номаълум тарзда ечиб олинганлиги аниқланди.
Мазкур ҳолат юзасидан Навбаҳор тумани ИИБ Навбатчилик қисмининг 
Шакл-1 китобида рўйхатга олинган 3746 рақами билан рўйхатдан ўтказилган, холат бўйича Навоий вилоят ИИБ ТҚХ Киберхавфсизлик ходимлари томонидан тезкор қидирув тадбирлари олиб борилмоқда.
Терговга қадар текширув жараёнини тўла, ҳар томонлама тўлиқ ва холисона олиб борилишини таъминлаш мақсадида 9860 0801 9978 2188 рақамли банк карталари билан боғлиқ электрон тўлов тизимларидан, ушбу картадан бошқа ҳисобларга йўналтирилган пуллар билан боғлиқ банк сирига оид барча маълумотларни, амалга оширилган транзакциялар, мазкур банк картасига юборилган пул маблағларини ўтказган банк карталари эгаларининг шахсига оид маълумотлари ҳамда уларнинг фойдаланувидаги қурилмаларнинг техник маълумотлари тўғрисида тўлов хизматларини етказиб берувчи операторлар ҳисобланган Марказий банк, банклар, тўлов ташкилотлари, тўлов агентларида мавжуд бўлган барча маълумотларни олиш бўйича “Маълумотларни тўплаш” тезкор-қидирув тадбирини ўтказиш лозим.
Юқоридагиларни инобатга олиб ҳамда ЖПКнинг 391,2, 382-моддалари ва “Банк сири тўғрисида”ги қонуннинг 9-моддаси, “Тезкор-қидирув фаолияти тўғрисида”ги Қонуннинг 14-16-моддаларини қўллаб,

         """, style: TextStyle(font: uzFont)),
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
