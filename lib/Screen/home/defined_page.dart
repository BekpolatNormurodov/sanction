import 'package:sanctions/library.dart';

class DefinedPage extends StatefulWidget {
  const DefinedPage({super.key});

  @override
  State<DefinedPage> createState() => _DefinedPageState();
}

class _DefinedPageState extends State<DefinedPage> {
  late TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SignedProviderPage signedProvider =
        Provider.of<SignedProviderPage>(context);
    return Container(
      child: Column(
        children: [
          Container(
            width: Get.width - 280,
            padding: EdgeInsets.symmetric(horizontal: 50),
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
                  "TANLANIB OLINGAN SANKSIYALAR",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    letterSpacing: .8,
                    wordSpacing: 2,
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
                      hintStyle: TextStyle(
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
                      textStyle: TextStyle(fontSize: 13),
                      isBackButtonVisible: false,
                      cursorColor: Colors.deepPurple.shade700,
                      duration: Duration(milliseconds: 300),
                      searchFieldHeight: 36,
                      searchBarHeight: 42,
                      searchBarWidth: 320,
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
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 50,
                        right: 50,
                        bottom: 8,
                        top: index == 0 ? 28 : 8,
                      ),
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
                              GestureDetector(
                                onTap: () => signedProvider.onClickStar(index),
                                child: Icon(
                                  signedProvider.starList[index]
                                      ? Icons.star_border_outlined
                                      : Icons.star,
                                  size: 24,
                                  color: signedProvider.starList[index]
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
                                "19124",
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
                              "22.08.2024",
                              style: GoogleFonts.robotoSerif(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
