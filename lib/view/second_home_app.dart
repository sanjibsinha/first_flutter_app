import 'package:first_flutter_app/controller/mobile_controller.dart';
import 'package:first_flutter_app/controller/second_home_page_controller.dart';
import 'package:first_flutter_app/model/first_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondHomeAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Second Provider Example',
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              textStyleSacramento('Provider Examples'),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'images/sea1.jpg',
                  width: 300,
                ),
              ),
              textStyleTrajanPro('We can add humongous widget tree below...'),
              changeNameButton(),
              Container(
                padding: const EdgeInsets.all(30.0),
                child: textStyleSacramento(
                    Provider.of<FirstModel>(context, listen: true).name),
              ),
              clearNameButton(),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  changeColorButtonToPurple(),
                  VerticalLine(),
                  changeColorButtonToRed(),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  restoreOldColorOfFirstMobile(),
                  VerticalLine(),
                  restoreOldColorOfSecondMobile(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: 3,
        color: Colors.black45,
      ),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: 3,
        color: Colors.black45,
      ),
    );
  }
}
