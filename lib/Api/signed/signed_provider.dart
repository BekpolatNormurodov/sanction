import 'package:sanction/Api/Signed/Signed_model.dart';
import 'package:sanction/library.dart';

enum SignedState { intial, waiting, success, error }

class SignedProvider extends ChangeNotifier {
  SignedState state = SignedState.intial;
  set(SignedState value) {
    state = value;
    notifyListeners();
  }

  List<SignedModel> data = [];

  Future getData() async {
    set(SignedState.waiting);
    try {
      data = (await SignedService().signedService())!;
      set(SignedState.success);
    } catch (e) {
      set(SignedState.error);
    }
  }
}