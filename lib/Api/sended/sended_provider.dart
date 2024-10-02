import 'package:sanction/library.dart';

enum SendedState { intial, waiting, success, error }

class SendedProvider extends ChangeNotifier {
  SendedState state = SendedState.intial;
  set(SendedState value) {
    state = value;
    notifyListeners();
  }

  List<SendedModel> data = [];

  Future getData() async {
    set(SendedState.waiting);
    try {
      data = (await SendedService().sendedService())!;
      set(SendedState.success);
    } catch (e) {
      set(SendedState.error);
    }
  }
}