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
            'Mega Food - Informasi Pemesanan',
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
                    'Antrian Pesanan',
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
                  title: Text("Nomor : 10"),
                  subtitle: Text("Catatan : Mie Bangka Pedas "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Status : Sedang dibuat",
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
                  title: Text("Nomor : 11"),
                  subtitle: Text("Catatan : - "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Status : Dalam antrian",
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
                  title: Text("Nomor : 12"),
                  subtitle: Text("Catatan : - "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Status : Dalam antrian",
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
