import 'package:first_flutter_app/model/first_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example'),
        ),
        body: Container(
          child: Consumer<FirstModel>(
            builder: (context, firstModel, child) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: RaisedButton(
                    child: Text(
                      'Press!',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () => firstModel.changeName(),
                  ),
                ),
                Text(
                  firstModel.name,
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    child: Text(
                      'Clear!',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () =>
                        Provider.of<FirstModel>(context, listen: false)
                            .clearName(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
