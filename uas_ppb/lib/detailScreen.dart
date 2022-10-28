import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  // const DetailScreen({super.key, required this.todo});
  const DetailScreen({super.key});

  // Declare a field that holds the Todo.
  //final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Nama Makanan',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
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
                                image: NetworkImage(
                                    "https://pps.whatsapp.net/v/t61.24694-24/303928967_1709597169484026_8292559486742102172_n.jpg?ccb=11-4&oh=01_AdTWMq2RMYGImqlhDQlV-a0SqmDEsa83M_IpRnr7YAjigA&oe=6367D098"),
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
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
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
                                          'Rp. 20.000',
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
