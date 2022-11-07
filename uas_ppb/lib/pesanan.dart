import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';
import './payment.dart';

class Pesanan extends StatefulWidget {
  //Pesanan({super.key});
  const Pesanan({Key? key, this.pesan}) : super(key: key);
  final dynamic pesan;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Pesanan> {
  int _counter = 1;
  //String resultkali = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _disincrementCounter() {
    setState(() {
      _counter--;
    });
  }

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: NetworkImage(widget.pesan['img_menu']),
                      width: 100.0,
                      height: 100.0,
                    ),
                    title: Text(widget.pesan['nama_menu']),
                    subtitle: Text(widget.pesan['harga_menu']),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: _disincrementCounter,
                                icon: Icon(Icons.remove)),
                            Text('$_counter'),
                            IconButton(
                                onPressed: _incrementCounter,
                                icon: Icon(Icons.add)),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      '$_counter Items',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      widget.pesan['harga_menu'],
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Payment()));
                    },
                    child: Text('Order'),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
