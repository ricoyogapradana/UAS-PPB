import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  final dynamic detail;
  const DetailScreen({Key? key, this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            detail['nama_menu'],
            style: TextStyle(
                color: Color.fromARGB(255, 255, 178, 78),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image(
                                fit: BoxFit.fill,
                                image: NetworkImage(detail['img_menu']),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 15.0, top: 15.0),
                                    child: Text('Description:',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                              Text(
                                detail['deskripsi_menu'],
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: 13.0, top: 13.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          detail['harga_menu'],
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned.fill(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              // gradient: LinearGradient(
                                              //   colors: <Color>[
                                              //     Color(0xFF0D47A1),
                                              //     Color(0xFF1976D2),
                                              //     Color(0xFF42A5F5),
                                              //   ],
                                              // ),
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            padding: const EdgeInsets.all(16.0),
                                            textStyle:
                                                const TextStyle(fontSize: 17),
                                          ),
                                          onPressed: () {},
                                          child: const Text('Add to Cart'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ]),
                  )),
            ),
          ],
        ));
  }
}
