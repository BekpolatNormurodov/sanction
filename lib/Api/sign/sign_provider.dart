import 'package:sanction/Api/sign/sign_model.dart';
import 'package:sanction/Api/sign/sign_service.dart';
import 'package:sanction/library.dart';

enum SignState { intial, waiting, success, error }

class SignProvider extends ChangeNotifier {
  SignState state = SignState.intial;
  set(SignState value) {
    state = value;
    notifyListeners();
  }

  List<SignModel> data = [];

  Future getData() async {

    set(SignState.waiting);
    try {
      data = (await SignService().signService())!;
      set(SignState.success);
    } catch (e) {
      set(SignState.error);
    }
  }
}
