import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'pesanan.dart';
import 'detailScreen.dart';

// Future<http.Response> fetchMenu() {
//   return http.get(Uri.parse(
//       'https://lentera.ricoyogapradana.my.id/ppb/menu/APIreadData.php'));
// }

Future<List<dynamic>> _fetchMenu() async {
  final response = await http.get(
      Uri.parse('https://lentera.ricoyogapradana.my.id/ppb/menu/menu.php'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

Future<List<dynamic>> _fetchBestseller() async {
  final response = await http.get(Uri.parse(
      'https://lentera.ricoyogapradana.my.id/ppb/menu/bestseller.php'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _MyAppState();
}

class _MyAppState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Mood Food - Menu',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 178, 78),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                "Bestsellers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 178, 78),
                    fontSize: 18.0),
              ),
              Column(
                children: [
                  Row(children: <Widget>[
                    Expanded(
                        child: SizedBox(
                      height: 200.0,
                      child: FutureBuilder<List<dynamic>>(
                        future: _fetchBestseller(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              //shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            detail: snapshot.data[index]),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Card(
                                      child: Row(children: [
                                        Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(snapshot
                                                .data[index]['img_menu']),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(45.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    snapshot.data[index]
                                                        ['nama_menu'],
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    snapshot.data[index]
                                                        ['harga_menu'],
                                                    style: TextStyle(
                                                        fontSize: 15.0),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          child: Stack(
                                                            children: <Widget>[
                                                              Positioned.fill(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Colors
                                                                        .red,
                                                                  ),
                                                                ),
                                                              ),
                                                              TextButton(
                                                                style: TextButton
                                                                    .styleFrom(
                                                                  foregroundColor:
                                                                      Colors
                                                                          .white,
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          16.0),
                                                                  textStyle:
                                                                      const TextStyle(
                                                                          fontSize:
                                                                              14),
                                                                ),
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .push(
                                                                    MaterialPageRoute(
                                                                      builder:
                                                                          (context) {
                                                                        return Pesanan(
                                                                            pesan:
                                                                                snapshot.data[index]);
                                                                      },
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    const Text(
                                                                        'Add'),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                );
                              },
                            );
                          } else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }

                          // By default, show a loading spinner.
                          return Column(
                            children: [const CircularProgressIndicator()],
                          );
                        },
                      ),
                    ))

                    // add here 1
                  ]),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 14.0),
                child: Text(
                  "Menu",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 178, 78),
                      fontSize: 18.0),
                ),
              ),
              FutureBuilder<List<dynamic>>(
                future: _fetchMenu(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(detail: snapshot.data[index]),
                              ),
                            );
                          },
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: ListTile(
                                        leading: Image(
                                          image: NetworkImage(
                                              snapshot.data[index]['img_menu']),
                                          width: 100.0,
                                          height: 100.0,
                                        ),
                                        contentPadding: EdgeInsets.all(5.0),
                                        title: Text(
                                          snapshot.data[index]['nama_menu'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text(
                                          snapshot.data[index]
                                              ['deskripsi_menu'],
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        snapshot.data[index]['harga_menu'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: ClipRRect(
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned.fill(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    border: Border.all(
                                                        color: Colors.red)),
                                              ),
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                foregroundColor: Colors.red,
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                textStyle: const TextStyle(
                                                    fontSize: 14),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return Pesanan(
                                                          pesan: snapshot
                                                              .data[index]);
                                                    },
                                                  ),
                                                );
                                              },
                                              child: const Text('Add'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  // By default, show a loading spinner.
                  return Column(
                    children: [const CircularProgressIndicator()],
                  );
                },
              ),
            ],
          ),
        ));
  }
}
