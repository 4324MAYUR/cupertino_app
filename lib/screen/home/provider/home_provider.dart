import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier
{
  bool isAndroid = true;

  void isChangeAndroid()
  {
    isAndroid = !isAndroid;
    notifyListeners();
  }

}