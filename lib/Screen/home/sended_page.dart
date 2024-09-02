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
        children: [
          // Search
          SearchAppBar().searchAppBar(
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
              itemCount: 20,
              padding: EdgeInsets.only(bottom: 28),
              itemBuilder: (context, index) {
                return SanksionsListView().sanksionsListView(
                  context,
                  index: index,
                  indexActive: 1,
                  number: "19148",
                  date: "22.08.2024",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
