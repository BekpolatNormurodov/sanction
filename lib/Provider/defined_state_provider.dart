import 'package:sanction/library.dart';

class DefinedStateProvider with ChangeNotifier {
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
