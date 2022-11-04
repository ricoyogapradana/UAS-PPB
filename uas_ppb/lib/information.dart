import 'dart:js';

import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  // In the constructor, require a Todo.

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'APP Information',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 178, 78),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Text(
                    'Made With Love \n MR. A',
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                )),
          ],
        ));
  }
}
