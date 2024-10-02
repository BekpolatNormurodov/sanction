import 'package:sanction/library.dart';

class DefinedPage extends StatefulWidget {
  const DefinedPage({super.key});

  @override
  State<DefinedPage> createState() => _DefinedPageState();
}

class _DefinedPageState extends State<DefinedPage> {
  late TextEditingController controller = TextEditingController();
  List<bool> isHoverList = List.generate(100, (i) => false);

  DefinedProvider? provider;
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
    provider = context.read<DefinedProvider>();
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
          SearchAppBarClass().searchAppBar(
            "OCHILADIGAN SANKSIYALAR",
            controller,
          ),
          // Sanktions List
          Container(
            width: Get.width - 280,
            height: Get.height - 64,
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
                    indexActive: 3,
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
}
