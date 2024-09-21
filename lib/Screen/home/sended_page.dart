import 'package:sanction/library.dart';

class SendedPage extends StatefulWidget {
  const SendedPage({super.key});

  @override
  State<SendedPage> createState() => _SendedPageState();
}

class _SendedPageState extends State<SendedPage> {
  late TextEditingController controller = TextEditingController();
  List<bool> isHoverList = List.generate(100, (i) => false);

  PdfProvider? pdfProvider;
  @override
  void initState() {
    pdfProvider = context.read<PdfProvider>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      pdfProvider!.getData();
    });
    pdfProvider?.addListener(() {
      if (mounted) setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Search
          SearchAppBarClass().searchAppBar(
              "RAXBARIYATGA IMZOLATISH UCHUN YUBORILGAN SANKSIYALAR",
              controller),
          // Sanktions List
          Container(
            width: Get.width - 280,
            height: Get.height - 64,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: ListView.builder(
              itemCount: pdfProvider!.data.length,
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
                    indexActive: 1,
                    hackType: pdfProvider!.data[index].hackType!,
                    region: pdfProvider!.data[index].region!,
                    shakl1: pdfProvider!.data[index].shakl1!,
                    date: pdfProvider!.data[index].date!,
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
