import 'package:flutter/material.dart';

class Pesanan extends StatelessWidget {
  Pesanan({super.key});

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
        // Row(
        //   children: [
        //     Text('Pesanan'),
        //   ],
        // ),
        Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                          "https://i.postimg.cc/V6MSWj3x/karedok.jpg"),
                      width: 100.0,
                      height: 100.0,
                    ),
                    title: Text('Karedok'),
                    subtitle: Text('\n\nRp. 25.000'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: Text('ADD'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                          "https://i.postimg.cc/50fXNqWm/Ayam-taliwang.jpg"),
                      width: 100.0,
                      height: 100.0,
                    ),
                    title: Text('Ayam Taliwang'),
                    subtitle: Text('\n\nRp. 45.000'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: Text('ADD'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                          "https://i.postimg.cc/Qdk007rW/mie-aceh.jpg"),
                      width: 100.0,
                      height: 100.0,
                    ),
                    title: Text('Mie Aceh'),
                    subtitle: Text('\n\nRp. 15.000'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: Text('ADD'),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            // Card(
            //   child: Row(
            //     children: <Widget>[
            //       Image(
            //         image: NetworkImage(
            //             "https://i.postimg.cc/SR7J8j3m/Untitled.png"),
            //         width: 100.0,
            //         height: 100.0,
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Container(
            //             padding: EdgeInsets.all(45.0),
            //             child: Column(
            //               children: [
            //                 Text(
            //                   "Ayam Taliwang",
            //                   style: TextStyle(
            //                       fontSize: 15.0, fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                   "Rp.45.000",
            //                   style: TextStyle(
            //                       fontSize: 12.0, fontWeight: FontWeight.bold),
            //                 )
            //               ],
            //             ),
            //           )
            //         ],
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: <Widget>[
            //           Container(
            //               width: 70.0,
            //               height: 20.0,
            //               decoration: BoxDecoration(
            //                   border: Border.all(color: Colors.black)),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               ))
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
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
                      '4 Items',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Rp 1,429,000',
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
