import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cardNumber = prefs.getString('ff_cardNumber') ?? _cardNumber;
    });
    _safeInit(() {
      _cardHolderName = prefs.getString('ff_cardHolderName') ?? _cardHolderName;
    });
    _safeInit(() {
      _cardName = prefs.getString('ff_cardName') ?? _cardName;
    });
    _safeInit(() {
      _zipCode = prefs.getString('ff_zipCode') ?? _zipCode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _cardNumber = '';
  String get cardNumber => _cardNumber;
  set cardNumber(String _value) {
    _cardNumber = _value;
    prefs.setString('ff_cardNumber', _value);
  }

  String _cardHolderName = '';
  String get cardHolderName => _cardHolderName;
  set cardHolderName(String _value) {
    _cardHolderName = _value;
    prefs.setString('ff_cardHolderName', _value);
  }

  String _cardName = '';
  String get cardName => _cardName;
  set cardName(String _value) {
    _cardName = _value;
    prefs.setString('ff_cardName', _value);
  }

  String _zipCode = '';
  String get zipCode => _zipCode;
  set zipCode(String _value) {
    _zipCode = _value;
    prefs.setString('ff_zipCode', _value);
  }

  List<String> _causeArea = [];
  List<String> get causeArea => _causeArea;
  set causeArea(List<String> _value) {
    _causeArea = _value;
  }

  void addToCauseArea(String _value) {
    _causeArea.add(_value);
  }

  void removeFromCauseArea(String _value) {
    _causeArea.remove(_value);
  }

  void removeAtIndexFromCauseArea(int _index) {
    _causeArea.removeAt(_index);
  }

  void updateCauseAreaAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _causeArea[_index] = updateFn(_causeArea[_index]);
  }

  void insertAtIndexInCauseArea(int _index, String _value) {
    _causeArea.insert(_index, _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
