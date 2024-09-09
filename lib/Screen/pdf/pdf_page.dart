import 'package:sanctions/library.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  String pdfLink = "assets/pdf/Bekpolat Normurodov.pdf";
  double zoom = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shortcuts(
        child: Center(
          child: SizedBox(
            width: 750 + zoom,
            height: Get.height,
            child: SfPdfViewer.asset(pdfLink),
          ),
        ),
        // The widget receiving focus
        shortcuts: <ShortcutActivator, Intent>{},
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () async {
                     setState(() {
                      zoom = zoom + 100;
                    });
                  },
                  child: Icon(Icons.zoom_in, size: 30),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () async {
                    setState(() {
                      if(zoom >= -500)
                      zoom = zoom - 100;
                    });
                  },
                  child: Icon(Icons.zoom_out, size: 30),
                ),
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: () async {
              final pdf = await rootBundle.load(pdfLink);
              await Printing.layoutPdf(
                  onLayout: (_) => pdf.buffer.asUint8List());
            },
            child: Icon(Icons.print),
          ),
        ],
      ),
    );
  }
}
