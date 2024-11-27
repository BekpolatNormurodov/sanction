import 'package:sanction/Api/sign/sign_model.dart';
import 'package:sanction/library.dart';
import 'package:http/http.dart' as http;

class SignService {
  Future<List<SignModel>?> signService() async {
    try {
      var _response = await http
          .get(Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/signed/'));
      if (_response.statusCode == 200) {
        List json = jsonDecode(_response.body);
        List<SignModel> data = json.map((e) => SignModel.fromJson(e)).toList();
        return data.reversed.toList();
      } else {
        return jsonDecode(_response.body);
      }
    } catch (e) {
      // print('${e}');
    }
    return null;
  }
}
