import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Pesanan extends StatelessWidget {
  //Pesanan({super.key});
  final dynamic pesan;
  const Pesanan({Key? key, this.pesan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Image.network('https://i.ibb.co/QHMWhfz/Instagram-logo-svg.png', width: 150.0,),
              Text(
                'Mood Food - List of Order',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 178, 78),
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      body: ListView(padding: EdgeInsets.all(20.0), children: <Widget>[
        Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: NetworkImage(pesan['img_menu']),
                      width: 100.0,
                      height: 100.0,
                    ),
                    title: Text(pesan['nama_menu']),
                    subtitle: Text(pesan['harga_menu']),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.remove)),
                            Text('1'),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Subtotal',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      '1 Items',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      pesan['harga_menu'],
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
