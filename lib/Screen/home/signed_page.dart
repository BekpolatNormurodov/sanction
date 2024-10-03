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

  SignedProvider? provider;
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
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
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
                typeFilter(valueType),
                region(valueRegion),
                numberFilter(),
                dateFilter(),
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
              itemCount: provider!.data.length,
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
                  child: SanksionsListViewClass().sanksionsListView(
                    context,
                    index: index,
                    indexActive: 2,
                    hackType: provider!.data[index].hackType!,
                    region: provider!.data[index].region!,
                    shakl1: provider!.data[index].shakl1!,
                    date: provider!.data[index].date!,
                    isHover: isHoverList[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // TYPE
  typeFilter(valueType) {
    return Container(
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

// REGION
  region(valueRegion) {
    return Container(
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
            borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
          ),
        ),
        items: [
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
    );
  }

  // NUMBER
  numberFilter() {
    return Container(
      width: 200,
      height: 48,
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

  // DATE
  dateFilter() {
    return Container(
      width: 160,
      height: 48,
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

  DropdownMenuItem regionIIB(region) => DropdownMenuItem(
        child: Text(
          region,
          style: TextStyle(fontSize: 14),
        ),
        value: region,
        onTap: () {},
      );
}
