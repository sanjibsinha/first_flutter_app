import 'package:first_flutter_app/model/mobile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Widget changeColorButtonToPurple() => Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Consumer<MobileModel>(
            builder: (context, value, child) => Container(
              padding: const EdgeInsets.all(15.0),
              child: FloatingActionButton(
                backgroundColor: value.selection[0],
                onPressed: () {
                  value.changeColorToPurple();
                },
                child: Icon(
                  Icons.mobile_screen_share,
                  color: value.selection[4],
                ),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        Consumer<MobileModel>(
          builder: (context, value, _) => Text(
            value.backgroundColorOfFirst,
            style: TextStyle(
              fontFamily: 'Trajan Pro',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        Consumer<MobileModel>(
          builder: (context, value, _) => Text(value.mobileColorOfFirst,
              style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
      ],
    );

Widget changeColorButtonToRed() => Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Consumer<MobileModel>(
            builder: (context, value, child) => Container(
              padding: const EdgeInsets.all(15.0),
              child: FloatingActionButton(
                backgroundColor: value.selection[1],
                onPressed: () {
                  value.changeColorToRed();
                },
                child: Icon(
                  Icons.mobile_screen_share,
                  color: value.selection[5],
                ),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        Consumer<MobileModel>(
          builder: (context, value, _) => Text(
            value.backgroundColorOfSecond,
            style: TextStyle(
              fontFamily: 'Trajan Pro',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          thickness: 2.0,
        ),
        Consumer<MobileModel>(
          builder: (context, value, _) => Text(value.mobileColorOfSecond,
              style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
      ],
    );

Widget restoreOldColorOfFirstMobile() => Container(
      padding: const EdgeInsets.all(10.0),
      child: Consumer<MobileModel>(
        builder: (context, value, child) => Container(
          padding: const EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () => value.restoreOldColorOfFirstMobile(),
            child: Text(
              'Restore',
              style: TextStyle(
                fontFamily: 'Sacramento',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );

Widget restoreOldColorOfSecondMobile() => Container(
      padding: const EdgeInsets.all(10.0),
      child: Consumer<MobileModel>(
        builder: (context, value, child) => Container(
          padding: const EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () => value.restoreOldColorOfSecondMobile(),
            child: Text(
              'Restore',
              style: TextStyle(
                fontFamily: 'Sacramento',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
