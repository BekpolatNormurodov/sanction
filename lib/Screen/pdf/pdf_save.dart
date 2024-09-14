import 'package:sanction/library.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';

// File ni kompyuterga sax qiladi
class PdfSave {
  static Future<File> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    var directory;

// bool dirDownloadExists = true
// if (Platform.isIOS) {
//   directory = await getExternalStorageDirectory();
// } else {
//   directory = "/storage/emulated/0/Download/";

//    dirDownloadExists = await Directory(directory).exists();
//   if(dirDownloadExists){
//     directory = "/storage/emulated/0/Download/";
//   }else{

//     directory = "/storage/emulated/0/Downloads/";
//   }
// }

    directory = await getDownloadsDirectory();

    final bytes = await pdf.save();

    // final dir = await getDownloadsDirectory();
    final file = File('${directory.path}/$name');

    // .create(recursive: true);
    if (!(await file.exists())) {
      await file.create();
    }

    await file.writeAsBytes(bytes);
    print(file.path);
    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;
    await OpenFile.open(url);
  }
}
