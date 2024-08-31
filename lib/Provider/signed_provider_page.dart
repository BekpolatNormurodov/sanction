import 'package:sanctions/library.dart';

class SignedProviderPage with ChangeNotifier {
  List<bool> removeList = List.generate(1000, (i) => false);
  bool isDelete = false;

  onTapDelete() {
    isDelete = !isDelete;
    notifyListeners();
  }

  onClickRemove(index) {
    if (!removeList[index]) {
      removeList[index] = true;
    } else {
      removeList[index] = false;
    }
    notifyListeners();
  }
}
