import 'package:sanction/library.dart';

enum DefinedState { intial, waiting, success, error }

class DefinedProvider extends ChangeNotifier {
  DefinedState state = DefinedState.intial;
  set(DefinedState value) {
    state = value;
    notifyListeners();
  }

  List<DefinedModel> data = [];

  Future getData() async {
    set(DefinedState.waiting);
    try {
      data = (await DefinedService().definedService())!;
      set(DefinedState.success);
    } catch (e) {
      set(DefinedState.error);
    }
  }
}