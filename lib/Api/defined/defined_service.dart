import 'package:sanction/library.dart';
import 'package:http/http.dart' as http;
class DefinedService {
  Future<List<DefinedModel>?> definedService()async {
    try {
      var _response = await http.get(Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/star/'));
      if (_response.statusCode == 200) {
        List json = jsonDecode(_response.body);
        List<DefinedModel> data = json.map((e) => DefinedModel.fromJson(e)).toList();
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
