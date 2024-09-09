import 'package:sanctions/library.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  String pdfLink = "assets/pdf/Bekpolat Normurodov.pdf";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Shortcuts(
        child: Center(
          child: SizedBox(
            width: 1000,
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