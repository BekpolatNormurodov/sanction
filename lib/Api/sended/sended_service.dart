import 'package:sanction/library.dart';
import 'package:http/http.dart' as http;
class SendedService {
  Future<List<SendedModel>?> sendedService() async {
    try {
      var _response = await http.get(Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/'));
      if (_response.statusCode == 200) {
        List json = jsonDecode(_response.body);
        List<SendedModel> data = json.map((e) => SendedModel.fromJson(e)).toList();
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
