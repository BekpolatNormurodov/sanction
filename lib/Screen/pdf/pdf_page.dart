import 'package:sanctions/library.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  String pdfLink = "assets/pdf/Bekpolat Normurodov.pdf";
  double zoom = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Shortcuts(
        child: Center(
          child: Material(
            elevation: 20,
            child: Container(
              width: 750.0 + zoom,
              height: Get.height - 20,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 8,
                  ),
                  BoxShadow(
                    offset: Offset(-1, -1),
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 8,
                  )
                ],
              ),
              child: SfPdfViewer.asset(
                pageSpacing: 10,
                pdfLink,
              ),
            ),
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
                  backgroundColor: Colors.red,
                  onPressed: () async {
                    setState(() {
                      zoom = zoom + 200.0;
                    });
                  },
                  child: Icon(Icons.zoom_in, size: 30),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () async {
                    setState(() {
                      if (zoom >= -500.0) zoom = zoom - 200.0;
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
                onLayout: (_) => pdf.buffer.asUint8List(),
              );
            },
            child: Icon(Icons.print),
          ),
        ],
      ),
    );
  }
}
