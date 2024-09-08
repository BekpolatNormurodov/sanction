import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:sanctions/library.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class UnCheckSanktionPage extends StatefulWidget {
  const UnCheckSanktionPage({super.key});

  @override
  State<UnCheckSanktionPage> createState() => _UnCheckSanktionPageState();
}

class _UnCheckSanktionPageState extends State<UnCheckSanktionPage> {
  String pdfLink = "assets/pdf/Bekpolat Normurodov.pdf";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Shortcuts(
        child: Center(
          child: SizedBox(
            width: 900,
            height: MediaQuery.of(context).size.height,
            child: SfPdfViewer.asset(
              pdfLink,
              interactionMode: PdfInteractionMode.pan,
              initialZoomLevel: 1,
              onZoomLevelChanged: (detail) {
                print(detail.newZoomLevel);
              },
            ),
          ),
        ),
        // The widget receiving focus
        shortcuts: {
          // LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.add): () {
          // },
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigator.to(editPage)
          final pdf = await rootBundle.load(pdfLink);
          await Printing.layoutPdf(onLayout: (_) => pdf.buffer.asUint8List());
        },
        child: Icon(Icons.print),
      ),
    );
  }
}