import 'package:sanctions/library.dart';

class MenuProviderPage with ChangeNotifier{
 int? activeIndex = 1;
 
  onClickSended(){
    activeIndex = 1;
    notifyListeners();
  }
   onClickSigned(){
    activeIndex = 2;
    notifyListeners();
  }
   onClickCreate(){
    activeIndex = 3;
    notifyListeners();
  }
}