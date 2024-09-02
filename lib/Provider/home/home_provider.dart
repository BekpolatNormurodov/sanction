import 'package:sanctions/library.dart';

class HomeProvider with ChangeNotifier {
  int activeIndex = 1;

  onClickSended() {
    activeIndex = 1;
    notifyListeners();
  }

  onClickSigned() {
    activeIndex = 2;
    notifyListeners();
  }

  onClickDefined() {
    activeIndex = 3;
    notifyListeners();
  }

  onClickCreate() {
    activeIndex = 4;
    notifyListeners();
  }

  // HOVER
  onClickHover(isHover, e) {
    isHover = e;
    notifyListeners();
  }
}
