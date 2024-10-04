import 'dart:io';
import 'package:sanction/library.dart';

class SanksionsListViewClass {
  sanksionsListView(
    context, {
    required int index,
    required int indexActive,
    required String hackType,
    required String region,
    required String shakl1,
    required String date,
    required bool isHover,
  }) {
    SignedStateProvider signedProvider =
        Provider.of<SignedStateProvider>(context);
    DefinedStateProvider definedProvider =
        Provider.of<DefinedStateProvider>(context);
    return InkWell(
      onTap: () => Get.to(PdfPage(index: index)),
      child: Container(
        margin: EdgeInsets.only(
          left: 50,
          right: 50,
          bottom: 8,
          top: index == 0 ? 28 : 8,
        ),
        padding: EdgeInsets.only(left: 16, right: 12),
        width: Get.width,
        height: 54,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                isHover ? Colors.deepPurpleAccent.shade700 : Colors.transparent,
            width: .5,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 1,
              color:
                  isHover ? Colors.transparent : Colors.black.withOpacity(.3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                indexActive == 1
                    ? Container(
                        width: 28,
                        height: 28,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              color: Colors.black.withOpacity(.5),
                            )
                          ],
                        ),
                        child: Text(
                          (index + 1).toString(),
                          style: TextStyle(
                            fontSize: 13,
                            color: isHover
                                ? Colors.deepPurpleAccent.shade700
                                : Colors.black,
                          ),
                        ),
                      )
                    : indexActive == 2
                        ? GestureDetector(
                            onTap: () async {
                              signedProvider.onClickStar(index);
                              // final pdf = Document();
                              // var pdfFile = await PdfSave.saveDocument(
                              //   name: shakl1,
                              //   pdf: pdf,
                              // );
                              // await DefinedPost().definedPost(
                              //   hackType: hackType,
                              //   region: region,
                              //   shakl1: shakl1,
                              //   pdf: pdfFile.path,
                              // );
                            },
                            child: Icon(
                              signedProvider.starList[index]
                                  ? Icons.star
                                  : Icons.star_border_outlined,
                              size: 26,
                              color: signedProvider.starList[index]
                                  ? Colors.orange
                                  : isHover
                                      ? Colors.deepPurple.shade800
                                          .withOpacity(.6)
                                      : Colors.grey,
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              // definedProvider.onClickStar(index);
                            },
                            child: Icon(
                              definedProvider.starList[index]
                                  ? Icons.star_border_outlined
                                  : Icons.star,
                              size: 26,
                              color: definedProvider.starList[index]
                                  ? Colors.grey
                                  : Colors.orange,
                            ),
                          ),
                SizedBox(width: 20),
                Container(
                  width: 160,
                  child: Text(
                    hackType,
                    style: TextStyle(
                      fontSize: 14,
                      color:
                          isHover ? Colors.deepPurple.shade700 : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 900,
              child: Row(
                children: [
                  Text(
                    "$region ИИБ Навбатчилик қисмининг Шакл-1 китобида рўйхатга олинган  ",
                    style: TextStyle(
                      fontSize: 16,
                      color: isHover ? Colors.deepPurple.shade700 : Colors.black,
                    ),
                  ),
                  Text(
                    shakl1,
                    style: TextStyle(
                      fontSize: 15,
                      color: isHover ? Colors.deepPurple.shade700 : Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    " -сонли мурожаат",
                    style: TextStyle(
                      fontSize: 16,
                      color: isHover ? Colors.deepPurple.shade700 : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 3),
              margin: EdgeInsets.only(left: 20),
              child: Text(
                date,
                style: GoogleFonts.robotoSerif(
                  textStyle: TextStyle(
                    fontSize: 13,
                    color: isHover ? Colors.deepPurple.shade700 : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
