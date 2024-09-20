import 'package:sanction/library.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class PdfPost {
  Future pdfPost({
    required String title,
    required String pdf,
  }) async {
    var request = http.MultipartRequest(
      'post',
      Uri.parse('https://bekpolatnormurodov.uz/sanctionApi/create/'),
    );

    final pdfFile = http.MultipartFile.fromBytes(
      'pdf',
      await File(pdf).readAsBytes(),
      filename: pdf.split('/').last,
    );
    
    request.fields.addAll({'title': title});
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