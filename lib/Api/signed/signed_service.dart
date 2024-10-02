import 'package:sanction/library.dart';
import 'package:http/http.dart' as http;
class SignedService {
  Future<List<SignedModel>?> signedService() async {
    try {
      var _response = await http.get(Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/prokuratura/'));
      if (_response.statusCode == 200) {
        List json = jsonDecode(_response.body);
        List<SignedModel> data = json.map((e) => SignedModel.fromJson(e)).toList();
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
