import 'package:sanctions/library.dart';

class SignedPage extends StatefulWidget {
  const SignedPage({super.key});

  @override
  State<SignedPage> createState() => _SignedPageState();
}

class _SignedPageState extends State<SignedPage> {
  late TextEditingController controller = TextEditingController();
  String? _value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Search
          SearchAppBar().searchAppBar("IMZOLANGAN SANKSIYALAR", controller),
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
                    SanksionsListView().sanksionsListView(
                      context,
                      index: index,
                      indexActive: 2,
                      number: "948",
                      date: "02.09.2024",
                    )
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
      width: 146,
      height: 50,
      child: DropdownButton(
        hint: Text(
          "Usuli",
          style: TextStyle(fontSize: 12),
        ),
        value: _value,
        items: [
          DropdownMenuItem(
            child: Text("Zararli ilova"),
            value: "apk",
            onTap: () {},
          ),
          DropdownMenuItem(
            child: Text("Fishing"),
            value: "fishing",
            onTap: () {},
          ),
          DropdownMenuItem(
            child: Text("Pul ko'paytirish"),
            value: "trading",
            onTap: () {},
          ),
          DropdownMenuItem(
            child: Text("Onlayn savdo"),
            value: "savdo",
            onTap: () {},
          ),
          DropdownMenuItem(
            child: Text("Boshqa"),
            value: "other",
            onTap: () {},
          ),
        ],
        onChanged: (String? e) {
          _value = e!;
          setState(() {});
        },
      ),
    );
  }

  // NUMBER
  numberFilter() {
    return Container(
      width: 200,
      height: 60,
      padding: const EdgeInsets.all(3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Murojat raqami",
              labelStyle: TextStyle(color: Colors.black, fontSize: 12),
              suffixIcon: Icon(Icons.search),
            ),

            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered
          ),
        ],
      ),
    );
  }

  dateFilter() {
    return Container(
      width: 160,
      height: 60,
      padding: const EdgeInsets.all(3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.date_range_outlined), hintText: "Sana"),
            keyboardType: TextInputType.number,
            inputFormatters: [
              DateInputFormatter(),
            ],
          )
        ],
      ),
    );
  }
}
