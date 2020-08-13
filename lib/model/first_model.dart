import 'package:flutter/widgets.dart';

class FirstModel with ChangeNotifier {
  String name = 'name';
  void changeName() {
    name = 'Name Changed!';
    print(name);
    notifyListeners();
  }

  void clearName() {
    name = ' ';
    print(name);
    notifyListeners();
  }
}
