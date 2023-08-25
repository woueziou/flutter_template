import 'package:flutter/widgets.dart';

import 'ui.states.dart';

class BaseController extends ChangeNotifier {
  UiState _state = UiState.stable;

  UiState get state => _state;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  void setErrorMessage(String error) {
    _errorMessage = error;
    _state = UiState.hasError;
    notifyListeners();
  }

  void resetErrorMessages() {
    _errorMessage = null;
    _state = UiState.stable;
    notifyListeners();
  }

  void toggleState(UiState state) {
    _state = state;
    notifyListeners();
  }

  void onInit() {}

  @override
  // ignore: must_call_super
  void dispose() {}

  void canDispose() {
    super.dispose();
  }
}
