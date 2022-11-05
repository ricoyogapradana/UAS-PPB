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
            'Information',
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
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 178, 63),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Order Queue',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/128/3246/3246626.png"),
                    width: 100.0,
                    height: 100.0,
                  ),
                  title: Text("Number : 10"),
                  subtitle: Text("Note : - "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Status : Is being made",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/128/3246/3246626.png"),
                    width: 100.0,
                    height: 100.0,
                  ),
                  title: Text("Number : 11"),
                  subtitle: Text("Note : - "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Status : In Queue",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            )),
            Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/128/3246/3246626.png"),
                    width: 100.0,
                    height: 100.0,
                  ),
                  title: Text("Number : 12"),
                  subtitle: Text("Note : - "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Status : In Queue",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ))
          ],
        ));
  }
}
