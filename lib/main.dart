import 'package:first_flutter_app/model/first_model.dart';
import 'package:first_flutter_app/view/second_home_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/mobile_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FirstModel()),
        ChangeNotifierProvider(create: (context) => MobileModel()),
      ],
      child: SecondHomeAppPage(),
    ),
  );
}
