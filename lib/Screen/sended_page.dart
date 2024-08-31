import 'package:sanctions/library.dart';

class SendedPage extends StatefulWidget {
  const SendedPage({super.key});

  @override
  State<SendedPage> createState() => _SendedPageState();
}

class _SendedPageState extends State<SendedPage> {
  late TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: Get.width - 280,
            padding: EdgeInsets.symmetric(horizontal: 56),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border(
                bottom: BorderSide(
                  color: Colors.green.shade700,
                  width: 1.4,
                ),
                top: BorderSide(
                  color: Colors.green.shade700,
                  width: 1.4,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Container(),
                Text(
                  "RAXBARIYATGA IMZOLATISH UCHUN YUBORILGAN SANKSIYALAR",
                  style: GoogleFonts.slabo13px(
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      letterSpacing: .8,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Row(
                  children: [
                    AnimationSearchBar(
                      onChanged: (text) {
                        // names = _names!.where((e) {
                        //   return e.toLowerCase().contains(text.toLowerCase());
                        // }).toList();
                        // setState(() {});
                      },
                      searchTextEditingController: controller,
                      closeIconColor: Colors.deepPurple.shade700,
                      centerTitle: ' ',
                      hintText: 'Izlash...',
                      hintStyle: GoogleFonts.slabo13px(
                        textStyle: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          shadows: [
                            BoxShadow(
                              offset: Offset(.5, .5),
                              blurRadius: 1,
                              color: Colors.red.shade100,
                            )
                          ],
                        ),
                      ),
                      textStyle: GoogleFonts.slabo13px(
                          textStyle: TextStyle(fontSize: 13)),
                      isBackButtonVisible: false,
                      cursorColor: Colors.deepPurple.shade700,
                      duration: Duration(milliseconds: 300),
                      searchFieldHeight: 36,
                      searchBarHeight: 42,
                      searchBarWidth: 360,
                      horizontalPadding: 5,
                      verticalPadding: 8,
                      searchIconColor: Colors.deepPurple.shade700,
                      searchFieldDecoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.deepPurple.shade700,
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(width: 26),
                    Icon(Icons.delete,
                        color: Colors.redAccent.shade700, size: 24)
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: Get.width - 280,
            height: Get.height - 64,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: ListView.builder(
              itemCount: 20,
              padding: EdgeInsets.only(bottom: 28),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: 50, right: 50, bottom: 8, top: index == 0 ? 28 : 8),
                  padding: EdgeInsets.only(left: 20, right: 10),
                  width: Get.width,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(.1)),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            size: 24,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Pul ko'paytirish:",
                            style: GoogleFonts.slabo13px(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Навбаҳор тумани ИИБ Навбатчилик қисмининг Шакл-1 китобида рўйхатга олинган  ",
                            style: GoogleFonts.slabo13px(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            "19124",
                            style: GoogleFonts.slabo13px(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            " -сонли мурожаат",
                            style: GoogleFonts.slabo13px(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.only(bottom: 3),
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "22.08.2024",
                          style: GoogleFonts.robotoSerif(
                            textStyle: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
