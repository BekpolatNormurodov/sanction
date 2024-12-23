import 'package:sanction/Api/Signed/Signed_model.dart';
import 'package:sanction/Api/sign/sign_model.dart';
import 'package:sanction/Api/sign/sign_provider.dart';
import 'package:sanction/library.dart';

class SignedPage extends StatefulWidget {
  const SignedPage({super.key});

  @override
  State<SignedPage> createState() => _SignedPageState();
}

class _SignedPageState extends State<SignedPage> {
  late TextEditingController controller = TextEditingController();
  List<bool> isHoverList = List.generate(100, (i) => false);
  String valueType = '';
  String valueRegion = '';
  String valueShakl1 = '';
  String valueDate = '';

  SignedProvider? provider;
  SignProvider? _provider;
  Timer? _timer;

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();
    provider = context.read<SignedProvider>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      provider!.getData();
      _timer = Timer.periodic(Duration(seconds: 10), (timer) {
        provider!.getData();
      });
    });
    provider?.addListener(() {
      setState(() {});
    });

    _provider = context.read<SignProvider>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _provider!.getData();
      _timer = Timer.periodic(Duration(seconds: 10), (timer) {
        _provider!.getData();
      });
    });
    _provider?.addListener(() {
      setState(() {});
    });
  }

  List<SignModel> getListUI() {
    if (provider == null || _provider == null) {
      return [];
    }
    List listShakl1 = provider!.data.map((e) => e.shakl1).toList();

    return _provider!.data.where((e) => listShakl1.contains(e.shakl1)).toList();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    List<SignModel> data = getListUI();
    return Container(
      child: Column(
        children: [
          // Search
          Container(
            width: Get.width - 280,
            padding: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: Colors.green,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black.withOpacity(.7),
                  blurRadius: 2.5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Container(),
                Text(
                  "IMZOLANGAN SANKSIYALAR",
                  style: GoogleFonts.slabo13px(
                    textStyle: TextStyle(
                      fontSize: 17,
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
                        textStyle: TextStyle(fontSize: 13),
                      ),
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
          // Search
          Container(
            width: Get.width - 400,
            margin: EdgeInsets.only(top: 8, bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 48,
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
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.5)),
                      ),
                    ),
                    items: [
                      typeHack("Hammasi"),
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
                ),
                Container(
                  width: 200,
                  height: 48,
                  child: DropdownButtonFormField(
                    focusColor: Colors.transparent,
                    hint: Text(
                      "Shahar-tumanlar",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 2, top: 10),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.5),
                        ),
                      ),
                    ),
                    items: [
                      regionIIB("Hammasi"),
                      regionIIB("Navoiy shahar"),
                      regionIIB("Karmana tumani"),
                      regionIIB("Navbahor tumani"),
                      regionIIB("Konimex tumani"),
                      regionIIB("Qiziltepa tumani"),
                      regionIIB("Xatirchi tumani"),
                      regionIIB("Zarafshon shahar"),
                      regionIIB("Uchquduq tumani"),
                      regionIIB("Nurota tumani"),
                      regionIIB("Tomdi tumani"),
                      regionIIB("G'azg'on tumani"),
                    ],
                    onChanged: (e) {
                      valueRegion = e!;
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  width: 200,
                  height: 48,
                  padding: const EdgeInsets.all(3),
                  child: TextFormField(
                    onChanged: (e) {
                      valueShakl1 = e;
                      setState(() {});
                    },
                    cursorColor: Colors.black.withOpacity(.8),
                    cursorWidth: 1.2,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      labelText: "Murojat raqami",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                      suffixIcon: Icon(Icons.search),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(.5)),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  height: 48,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        onChanged: (e) {
                          valueDate = e;
                          print(e);
                          setState(() {});
                        },
                        cursorColor: Colors.black.withOpacity(.8),
                        cursorWidth: 1.2,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 2, top: 16),
                          suffixIcon: Icon(Icons.date_range),
                          hintText: "Sana",
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black.withOpacity(.5)),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          DateInputFormatter(),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Sanktions List
          Container(
            width: Get.width - 280,
            height: Get.height - 126,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: ListView.builder(
              itemCount: data.length,
              padding: EdgeInsets.only(bottom: 28),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  onHover: (e) {
                    if (!isHoverList[index]) {
                      isHoverList[index] = true;
                    } else {
                      isHoverList[index] = false;
                    }
                    setState(() {});
                  },
                  child: (valueType == _provider!.data[index].hackType! ||
                              valueType == '' ||
                              valueType == 'Hammasi') &&
                          (valueRegion == _provider!.data[index].region! ||
                              valueRegion == '' ||
                              valueRegion == 'Hammasi') &&
                          (valueShakl1 == _provider!.data[index].shakl1! ||
                              valueShakl1 == '') &&
                          (valueDate == _provider!.data[index].date! ||
                              valueDate == '')
                      ? SanksionsListViewClass().sanksionsListView(
                          context,
                          index: index,
                          indexActive: 2,
                          hackType: data[index].hackType!,
                          region: data[index].region!,
                          shakl1: data[index].shakl1!,
                          date: data[index].date!,
                          isHover: isHoverList[index],
                          starId: data[index].id!,
                        )
                      : Container(),
                );
              },
            ),
          ),
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

  DropdownMenuItem regionIIB(region) => DropdownMenuItem(
        child: Text(
          region,
          style: TextStyle(fontSize: 14),
        ),
        value: region,
        onTap: () {},
      );
}
