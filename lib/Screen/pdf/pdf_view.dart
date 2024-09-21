// import 'package:pdf/widgets.dart' as pw;
// import 'package:intl/intl.dart' as intl;
// import 'package:intl/intl.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'dart:io';
import 'package:pdf/widgets.dart';
import 'package:sanction/Screen/pdf/pdf_model.dart';
import 'package:sanction/Screen/pdf/pdf_post.dart';
import 'package:sanction/Screen/pdf/pdf_save.dart';

class PdfView {
  static Future<File> generate({
    required String region,
    required String shakl1,
    required String telDate,
    required String adress,
    required String fullname,
    required String birthday,
    required String hackType,
    required String hackApk,
    required String info,
    required String fromCard,
    required String inCard,
    required String cardFullname,
    required bool owner,
    required String loseDate,
    required String loseTime,
    required String loss,
    required PdfModel model,
  }) async {
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
        margin: EdgeInsets.only(left: 56, right: 32, top: 36, bottom: 40),
        build: (context) => [
          Container(
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
          Container(
            margin: EdgeInsets.only(top: 32, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "«____» _____ 2024 йил",
                  style: TextStyle(
                    font: uzFont,
                    fontSize: 11,
                  ),
                ),
                Text(
                  "Навоий шаҳар",
                  style: TextStyle(
                    font: uzFont,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "          Навоий вилояти ИИБ ТҚХ Киберхавфсизлик бўлинмаси катта мутахасисси катта сержант Б.Э.Нормуродов, $region ИИБ Навбатчилик қисмининг Шакл-1 китобида рўйхатга олинган $shakl1-сонли мурожаат юзасидан тўпланган ҳужжатлар билан танишиб чиқиб, қуйидагиларни",
            textAlign: TextAlign.justify,
            style: TextStyle(
              font: uzFont,
              fontSize: 12,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "A  H  И  Қ  Л  A  Д  И  M:",
              style: TextStyle(
                font: uzFontBold,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(
                font: uzFont,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                    text:
                        "          $telDate куни $region ${adress}da яшовчи $fullname телефон орқали, ўзига тегишли "),
                TextSpan(
                  text: fromCard,
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                    text:
                        " рақамли пластик картаси ҳисобидан $loseDate куни соат $loseTime да "),
                TextSpan(
                  text: loss,
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                    text:
                        " сўм пуллари номаълум тарзда ечиб олинганлиги аниқланди."),
              ],
            ),
          ),
          Text(
            "          Мазкур ҳолат юзасидан $region ИИБ Навбатчилик қисмининг Шaкл-1 китобида рўйхатга олинган $shakl1 рақами билан рўйхатдан ўтказилган, холат бўйича Навоий вилоят ИИБ ТҚХ Киберхавфсизлик ходимлари томонидан тезкор қидирув тадбирлари олиб борилмоқда.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              font: uzFont,
              fontSize: 12,
            ),
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(
                font: uzFont,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                    text:
                        "          Терговга қадар текширув жараёнини тўла, ҳар томонлама тўлиқ ва холисона олиб борилишини таъминлаш мақсадида "),
                TextSpan(
                  text: fromCard,
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                    text:
                        " рақамли банк карталари билан боғлиқ электрон тўлов тизимларидан, ушбу картадан бошқа ҳисобларга йўналтирилган пуллар билан боғлиқ банк сирига оид барча маълумотларни, амалга оширилган транзакциялар, мазкур банк картасига юборилган пул маблағларини ўтказган банк карталари эгаларининг шахсига оид маълумотлари ҳамда уларнинг фойдаланувидаги қурилмаларнинг техник маълумотлари тўғрисида тўлов хизматларини етказиб берувчи операторлар ҳисобланган Марказий банк, банклар, тўлов ташкилотлари, тўлов агентларида мавжуд бўлган барча маълумотларни олиш бўйича «Маълумотларни тўплаш» тезкор-қидирув тадбирини ўтказиш лозим."),
              ],
            ),
          ),
          Text(
            "          Юқоридагиларни инобатга олиб ҳамда ЖПКнинг 391,2, 382-моддалари ва «Банк сири тўғрисида»ги қонуннинг 9-моддаси, «Тезкор-қидирув фаолияти тўғрисида»ги Қонуннинг 14-16-моддаларини қўллаб,",
            style: TextStyle(
              font: uzFont,
              fontSize: 12,
            ),
            textAlign: TextAlign.justify,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 16, bottom: 6),
            child: Text(
              "Қ A P O P   Қ И Л Д И M:",
              style: TextStyle(
                font: uzFontBold,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(
                font: uzFont,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                    text:
                        "          1.	Фуқаро $fullnameга тегишли "),
                TextSpan(
                  text: fromCard,
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 13,
                  ),
                ),
                TextSpan(text: " рақамли пластик картадан $loseDate kuni soat $loseTime da  "),
                TextSpan(
                  text: loss,
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                    text:
                        " сўм миқдорида пуллар кўчирилган ҳисобрақамнинг кимга тегишли эканлиги, ундан кимларнинг пластик карталарига транзакциялар амалга оширилганлиги, амалиётларни амалга оширган шахсларнингсервер «лог» файлларини, фойдаланилган иловалар ва уланган барча пластик карталар, уларнинг ўтказма тарихлари, пластик картадан фойдаланган шахсларнинг абонент рақамлари ва ИП манзилларинианиқлансин ва олинган маълумотлар Навоий вилояти ИИБ ТҚХ Киберхавфсизлик бўлинмаси "),
                TextSpan(
                  text: " info@naviib.uz",
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 12,
                    color: PdfColors.blueAccent700,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: ", "),
                TextSpan(
                  text: "navoiy-v.iib-tqhb@exat.uz",
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 12,
                    color: PdfColors.blueAccent700,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: " электрон манзилига юборилсин."),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(
                font: uzFont,
                fontSize: 12,
              ),
              children: [
                TextSpan(
                    text:
                        "          2. Пластик карталардаги пул маблағлари нақдлаштирилган бўлса, қайси банкомат ва унинг нақдлаштириш жараёнидаги видео тасвир лавҳаларини олиш ва "),
                TextSpan(
                  text:
                      " пластик картада ёки ҳисобрақамдаги мавжуд бўлган пул маблағларини музлатиш, ",
                  style: TextStyle(
                    font: uzFontBold,
                    fontSize: 13,
                  ),
                ),
                TextSpan(
                    text:
                        "ечиб олинган пулларни ваколат доирасида мурожаатчининг пластик картасига қайтариш чоралари кўрилсин."),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "          3. Мазкур қарорнинг ижросини Ягона умумреспублика протсессинг маркази, Миллий банклараро протсессинг маркази ва улардан олинган маълумотлар бўйича тегишли тўлов тизимлари ва барча банклар бошлиқларига юклатилсин.",
              style: TextStyle(fontSize: 12, font: uzFont),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "          4. Қабул қилинган қарорнинг бир нусхаси маълумот учун Навоий вилоят прокуратурасига юборилсин.",
              style: TextStyle(fontSize: 12, font: uzFont),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60, left: 4, right: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 204,
                  child: Text(
                    "Навоий вилояти ИИБ ТҚХ Киберхавфсизлик бўлинмаси катта мутахасисси катта сержант",
                    style: TextStyle(fontSize: 13, font: uzFontBold),
                    textAlign: TextAlign.start,
                  ),
                ),
                Text(
                  "Б.Э.Нормуродов",
                  style: TextStyle(fontSize: 13, font: uzFontBold),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    // pdf.addPage(
    //   Page(
    //     build: (Context context) => Center(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [],
    //       ),
    //     ),
    //   ),
    // );
    var pdfFile = await PdfSave.saveDocument(name: shakl1, pdf: pdf);
    await PdfPost().pdfPost(
      hackType: hackType,
      region: region,
      shakl1: shakl1,
      pdf: pdfFile.path,
    );

    return pdfFile;
  }
}
