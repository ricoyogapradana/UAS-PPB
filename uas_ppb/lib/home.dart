import 'package:flutter/material.dart';

import 'detailScreen.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Sami Lariz - Menu',
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(padding: EdgeInsets.all(20.0), children: <Widget>[
        Text(
          "Bestsellers",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        Column(
          children: [
            Row(children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Card(
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://pps.whatsapp.net/v/t61.24694-24/303928967_1709597169484026_8292559486742102172_n.jpg?ccb=11-4&oh=01_AdTWMq2RMYGImqlhDQlV-a0SqmDEsa83M_IpRnr7YAjigA&oe=6367D098"),
                          ),
                        ),
                        Text(
                          'Nama Makanan',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp. 20.000',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: ClipRRect(
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
                                            const TextStyle(fontSize: 14),
                                      ),
                                      onPressed: () {},
                                      child: const Text('Add'),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              // add here 1
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Card(
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://pps.whatsapp.net/v/t61.24694-24/303928967_1709597169484026_8292559486742102172_n.jpg?ccb=11-4&oh=01_AdTWMq2RMYGImqlhDQlV-a0SqmDEsa83M_IpRnr7YAjigA&oe=6367D098"),
                          ),
                        ),
                        Text(
                          'Nama Makanan',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rp. 20.000',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: ClipRRect(
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
                                            const TextStyle(fontSize: 14),
                                      ),
                                      onPressed: () {},
                                      child: const Text('Add'),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              // add here 1
            ]),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 14.0),
          child: Text(
            "Menu",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/second');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ),
            );
          },
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Image(
                      image: NetworkImage(
                          "https://pps.whatsapp.net/v/t61.24694-24/303928967_1709597169484026_8292559486742102172_n.jpg?ccb=11-4&oh=01_AdTWMq2RMYGImqlhDQlV-a0SqmDEsa83M_IpRnr7YAjigA&oe=6367D098")),
                  contentPadding: EdgeInsets.all(5.0),
                  title: Text('Nama Makanan'),
                  subtitle: Text('Deskripsi Makanan \n\nRp. 20.000'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ClipRRect(
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
                                textStyle: const TextStyle(fontSize: 14),
                              ),
                              onPressed: () {},
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
        ),

        //  add here
      ]),
    );
  }
}
