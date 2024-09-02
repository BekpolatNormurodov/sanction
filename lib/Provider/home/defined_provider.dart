import 'package:sanctions/library.dart';

class DefinedProvider with ChangeNotifier {
  List<bool> starList = List.generate(1000, (i) => false);

  onClickStar(index) {
    if (!starList[index]) {
      starList[index] = true;
    } else {
      starList[index] = false;
    }
    notifyListeners();
  }
}
