import 'package:sanctions/library.dart';

class SanksionsListViewClass {
  sanksionsListView(
    context, {
    required int index,
    required int indexActive,
    required String number,
    required String date,
  }) {
    SignedProvider signedProvider = Provider.of<SignedProvider>(context);
    DefinedProvider definedProvider = Provider.of<DefinedProvider>(context);
    return Container(
      margin: EdgeInsets.only(
          left: 50, right: 50, bottom: 8, top: index == 0 ? 28 : 8),
      padding: EdgeInsets.only(left: 14, right: 10),
      width: Get.width,
      height: 54,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 2),
            blurRadius: 4,
            color: Colors.black.withOpacity(.1),
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
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            color: Colors.grey.shade300,
                          )
                        ],
                      ),
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  : indexActive == 2
                      ? GestureDetector(
                          onTap: () => signedProvider.onClickStar(index),
                          child: Icon(
                            signedProvider.starList[index]
                                ? Icons.star
                                : Icons.star_border_outlined,
                            size: 26,
                            color: signedProvider.starList[index]
                                ? Colors.orange
                                : Colors.grey,
                          ),
                        )
                      : GestureDetector(
                          onTap: () => definedProvider.onClickStar(index),
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
                  "Pul ko'paytirish:",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Навбаҳор тумани ИИБ Навбатчилик қисмининг Шакл-1 китобида рўйхатга олинган  ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                number,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " -сонли мурожаат",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(),
          Container(),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(bottom: 3),
            margin: EdgeInsets.only(left: 20),
            child: Text(
              date,
              style: GoogleFonts.robotoSerif(
                textStyle: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
