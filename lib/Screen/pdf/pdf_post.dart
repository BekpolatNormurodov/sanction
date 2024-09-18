import 'package:sanction/library.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class PdfPost {
  Future pdfPost({
    required String title,
    required String logo,
    required String pdf,
  }) async {
    var request = http.MultipartRequest(
      'post',
      Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/create/'),
    );

    final img = http.MultipartFile.fromBytes(
      'image',
      await File(logo).readAsBytes(),
      filename: logo.split('/').last,
    );

    final pdfFile = http.MultipartFile.fromBytes(
      'pdf',
      await File(pdf).readAsBytes(),
      filename: pdf.split('/').last,
    );
    
    request.fields.addAll({'title': title});
    request.files.add(img);
    request.files.add(pdfFile);

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      return jsonDecode(data);
    }
  }
}
