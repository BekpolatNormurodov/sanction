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
    return Container(
      child: Column(
        children: [
          // Search
          SearchAppBar().searchAppBar("OCHILADIGAN SANKSIYALAR", controller),
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
                  indexActive: 3,
                  number: "12872",
                  date: "12.08.2024",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
