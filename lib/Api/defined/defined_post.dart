import 'package:sanction/library.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class DefinedPost {
  Future definedPost({
    required int starId,
  }) async {
    var request = await http.MultipartRequest(
      'post',
      Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/star/create/'),
    );

    request.fields.addAll({'starId': starId.toString()});

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 201) {
      var data = await response.stream.bytesToString();
      return jsonDecode(data);
    }
  }
}
