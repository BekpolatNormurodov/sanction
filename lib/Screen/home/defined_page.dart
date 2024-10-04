import 'package:sanction/library.dart';

class DefinedPage extends StatefulWidget {
  const DefinedPage({super.key});

  @override
  State<DefinedPage> createState() => _DefinedPageState();
}

class _DefinedPageState extends State<DefinedPage> {
  late TextEditingController controller = TextEditingController();
  List<bool> isHoverList = List.generate(100, (i) => false);
  List<bool> isStarList = List.generate(100, (i) => false);

  SignedProvider? provider;
  DefinedProvider? starProvider;
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

    starProvider = context.read<DefinedProvider>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      starProvider!.getData();
      _timer = Timer.periodic(Duration(seconds: 10), (timer) {
        starProvider!.getData();
      });
    });
    starProvider?.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

 List<SignedModel> getSelectedItems(List<SignedModel> data, List<DefinedModel> stars) {
    List sortedStars = stars
        .map((star) {
          return star.starId;
        })
        .toSet()
        .toList();
    return data.where((item) {
      return sortedStars.contains(item.id);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<SignedModel> uiData = getSelectedItems(provider!.data, starProvider!.data);
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
                  "OCHILADIGAN SANKSIYALAR",
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
          // Sanktions List
          Container(
            width: Get.width - 280,
            height: Get.height - 68,
            margin: EdgeInsets.only(top: 6),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: ListView.builder(
              itemCount: uiData.length,
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
                    indexActive: 3,
                    hackType: uiData[index].hackType!,
                    region: uiData[index].region!,
                    shakl1: uiData[index].shakl1!,
                    date: uiData[index].date!,
                    isHover: isHoverList[index],
                    starId: uiData[index].id!,
                    star: true,
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
