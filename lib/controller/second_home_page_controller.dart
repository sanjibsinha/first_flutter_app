import 'package:first_flutter_app/model/first_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget textStyleTrajanPro(String trajan) => Text(
      trajan,
      style: TextStyle(
        fontFamily: 'Trajan Pro',
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );

Widget textStyleSacramento(String sacramento) => Text(
      sacramento,
      style: TextStyle(
        fontFamily: 'Sacramento',
        fontSize: 55.0,
      ),
      textAlign: TextAlign.center,
    );

Widget changeNameButton() => Container(
      padding: const EdgeInsets.all(30.0),
      child: Consumer<FirstModel>(
        builder: (context, value, child) => Container(
          padding: const EdgeInsets.all(25.0),
          child: RaisedButton(
            child: Text(
              'Change Name',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              value.changeName();
            },
          ),
        ),
      ),
    );

Widget clearNameButton() => Container(
      padding: const EdgeInsets.all(30.0),
      child: Consumer<FirstModel>(
        builder: (context, value, child) => Container(
          padding: const EdgeInsets.all(25.0),
          child: RaisedButton(
            child: Text(
              'Clear Name',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              value.clearName();
            },
          ),
        ),
      ),
    );
