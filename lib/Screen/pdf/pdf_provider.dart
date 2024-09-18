import 'package:sanction/library.dart';

enum PdfState { intial, waiting, success, error }

class PdfProvider extends ChangeNotifier {
  PdfState state = PdfState.intial;
  set(PdfState value) {
    state = value;
    notifyListeners();
  }

  List<PdfModel> data = [];

  Future getData() async {
    set(PdfState.waiting);
    try {
      data = (await PdfService().pdfService())!;
      set(PdfState.success);
    } catch (e) {
      set(PdfState.error);
    }
  }
}