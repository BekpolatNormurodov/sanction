import 'package:sanction/library.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class DefinedPost {
  Future definedPost({
    required String hackType,
    required String region,
    required String shakl1,
    required String pdf,
  }) async {
    var request = http.MultipartRequest(
      'post',
      Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/star/create/'),
    );

    final pdfFile = http.MultipartFile.fromBytes(
      'pdf',
      await File(pdf).readAsBytes(),
      filename: pdf.split('/').last,
    );

    request.fields.addAll({'hackType': hackType, 'region': region, 'shakl1': shakl1});
    request.files.add(pdfFile);

    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    print("response");
    if (response.statusCode == 201) {
      var data = await response.stream.bytesToString();
      return jsonDecode(data);
    }
  }
}