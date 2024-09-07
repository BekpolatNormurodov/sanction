import 'package:sanctions/library.dart';

class SignedPage extends StatefulWidget {
  const SignedPage({super.key});

  @override
  State<SignedPage> createState() => _SignedPageState();
}

class _SignedPageState extends State<SignedPage> {
  late TextEditingController controller = TextEditingController();
  List<bool> isHoverList = List.generate(100, (i) => false);
  String? valueType;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Search
          SearchAppBarClass()
              .searchAppBar("IMZOLANGAN SANKSIYALAR", controller),
          // Sanktions List
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
                    index == 0
                        // Filter
                        ? Container(
                            width: Get.width - 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                typeFilter(),
                                numberFilter(),
                                dateFilter(),
                              ],
                            ),
                          )
                        : Container(),
                    // Sanktions
                    InkWell(
                      onTap: () {},
                      onHover: (e) {
                        if (!isHoverList[index]) {
                          isHoverList[index] = true;
                        } else {
                          isHoverList[index] = false;
                        }
                        setState(() {});
                      },
                      child: SanksionsListViewClass().sanksionsListView(
                        context,
                        index: index,
                        indexActive: 2,
                        number: "948",
                        date: "02.09.2024",
                        isHover: isHoverList[index],
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

  // TYPE
  typeFilter() {
    return Container(
      width: 160,
      child: DropdownButtonFormField(
        focusColor: Colors.transparent,
        hint: Text(
          "Usuli",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        decoration: InputDecoration(
             contentPadding: EdgeInsets.only(left: 2, top: 10),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
          ),
        ),
        items: [
          typeHack("Zararli dastur"),
          typeHack("Fishing"),
          typeHack("Pul ko'paytirish"),
          typeHack("Onlayn savdo"),
          typeHack("Boshqa"),
        ],
        onChanged: (e) {
          valueType = e!;
          setState(() {});
        },
      ),
    );
  }

  // NUMBER
  numberFilter() {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(3),
      child: TextFormField(
        cursorColor: Colors.black.withOpacity(.8),
        cursorWidth: 1.2,
        cursorHeight: 20,
        decoration: InputDecoration(
          labelText: "Murojat raqami",
          labelStyle: TextStyle(color: Colors.black, fontSize: 13),
          suffixIcon: Icon(Icons.search),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
          ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }

  dateFilter() {
    return Container(
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            cursorColor: Colors.black.withOpacity(.8),
            cursorWidth: 1.2,
            cursorHeight: 20,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 2, top: 16),
              suffixIcon: Icon(Icons.date_range),
              hintText: "Sana",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              DateInputFormatter(),
            ],
          )
        ],
      ),
    );
  }

  DropdownMenuItem typeHack(type) => DropdownMenuItem(
        child: Text(
          type,
          style: TextStyle(fontSize: 14),
        ),
        value: type,
        onTap: () {},
      );
}
