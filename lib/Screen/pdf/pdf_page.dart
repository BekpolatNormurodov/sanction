import 'package:sanction/library.dart';
import 'package:http/http.dart' as http;

class PdfPage extends StatefulWidget {
  int? index;
  PdfPage({required this.index});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  double zoom = 0.0;
  SendedProvider? pdfProvider;
  @override
  void initState() {
    pdfProvider = context.read<SendedProvider>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      pdfProvider!.getData();
    });
    pdfProvider?.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  final GlobalKey<SfPdfViewerState> _pdfKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return
        // pdfProvider!.state == pdfProvider.intial
        //     ? Container()
        //     : pdfProvider!.state == pdfProvider.waiting
        //         ? Center(
        //             child: CircularProgressIndicator(
        //               color: Colors.green.shade200,
        //               backgroundColor: Colors.green.shade800,
        //               strokeWidth: 20.w,
        //             ),
        //           )
        //         : pdfProvider!.state == pdfProvider.error
        //             ? Center(
        //                 child: Text(
        //                   "Malumotlar mavjud emas!!!",
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 24.sp,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               )
        //             :
        Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Center(
        child: Material(
          elevation: 20,
          child: Container(
            width: 750.0 + zoom,
            height: Get.height - 20,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/pechat.png")),
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
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    color: Colors.redAccent,
                  ),
                ),
                SfPdfViewer.network(
                  key: _pdfKey,
                  pageSpacing: 10,
                  pdfProvider!.data[widget.index!].pdf_url!,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top: 26, left: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  key: Key("back"),
                  mini: true,
                  backgroundColor: Colors.grey.shade300,
                  onPressed: () => Get.back(),
                  child: Icon(Icons.arrow_back),
                ),
                Row(
                  children: [
                    FloatingActionButton(
                      key: Key("zoom in"),
                      mini: true,
                      backgroundColor: Colors.grey.shade300,
                      onPressed: () async {
                        setState(() {
                          zoom = zoom + 200.0;
                        });
                      },
                      child: Icon(Icons.zoom_in),
                    ),
                    SizedBox(width: 14),
                    FloatingActionButton(
                      key: Key("zoom out"),
                      mini: true,
                      backgroundColor: Colors.grey.shade300,
                      onPressed: () async {
                        setState(() {
                          if (zoom >= -500.0) zoom = zoom - 200.0;
                        });
                      },
                      child: Icon(Icons.zoom_out),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FloatingActionButton(
            key: Key("printer"),
            backgroundColor: Colors.grey.shade300,
            onPressed: () async {
              final pdf = await http.readBytes(
                  Uri.parse(pdfProvider!.data[widget.index!].pdf_url!));
              await Printing.layoutPdf(
                onLayout: (_) => pdf.buffer.asUint8List(),
              );
            },
            child: Icon(Icons.print, size: 26),
          ),
        ],
      ),
    );
  }
}
