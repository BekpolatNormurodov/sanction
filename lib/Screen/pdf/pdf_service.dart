import 'package:sanction/library.dart';
import 'package:http/http.dart' as http;
class PdfService {
  Future<List<PdfModel>?> pdfService() async {
    try {
      var _response = await http.get(Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/'));
      if (_response.statusCode == 200) {
        List json = jsonDecode(_response.body);
        List<PdfModel> data = json.map((e) => PdfModel.fromJson(e)).toList();
        return data.reversed.toList();
      } else {
        return jsonDecode(_response.body);
      }
    } catch (e) {
      print('${e}');
    }
    return null;
  }
}
