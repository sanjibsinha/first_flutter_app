import 'package:first_flutter_app/controller/mobile_controller.dart';
import 'package:first_flutter_app/controller/second_home_page_controller.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: changeNameButton(),
    );
  }
}
