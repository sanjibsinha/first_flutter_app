import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MobileModel with ChangeNotifier {
  String backgroundColorOfFirst = 'Background';
  String mobileColorOfFirst = 'Mobile';
  String backgroundColorOfSecond = 'Background';
  String mobileColorOfSecond = 'Mobile';
  List<Color> selection = [
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.pinkAccent,
    Colors.green,
    Colors.limeAccent,
  ];

  void changeColorToPurple() {
    backgroundColorOfFirst = 'Background \n Purle';
    mobileColorOfFirst = 'Mobile \n White.';
    selection[0] = Colors.purple;
    selection[4] = Colors.white;
    notifyListeners();
  }

  void changeColorToRed() {
    backgroundColorOfSecond = 'Background \n Black';
    mobileColorOfSecond = 'Mobile \n Red.';
    selection[1] = Colors.black;
    selection[5] = Colors.red;
    notifyListeners();
  }

  void restoreOldColorOfFirstMobile() {
    backgroundColorOfFirst = 'Background \n Yellow';
    mobileColorOfFirst = 'Mobile \n Green.';
    selection[0] = Colors.yellow;
    selection[4] = Colors.green;
    notifyListeners();
  }

  void restoreOldColorOfSecondMobile() {
    backgroundColorOfSecond = 'Background \n Blue';
    mobileColorOfSecond = 'Mobile \n Limeaccent.';
    selection[1] = Colors.blue;
    selection[5] = Colors.limeAccent;
    notifyListeners();
  }
}
