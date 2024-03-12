import 'package:flutter/foundation.dart';

class CountProvider with ChangeNotifier
{
  int _quan=1;

  int get quan=>_quan;

  void increment(){
    _quan++;
    notifyListeners();
  }
  void decrement(){
    _quan--;
    notifyListeners();
  }
}