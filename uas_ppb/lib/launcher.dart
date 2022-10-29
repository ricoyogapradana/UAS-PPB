import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'homepage.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.fromARGB(255, 226, 226, 226),
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],

          // gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     colors: [
          //       Colors.white,
          //       Colors.tealAccent,
          //     ])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
                child: new Image(
              image: NetworkImage("https://i.postimg.cc/SR7J8j3m/Untitled.png"),
              width: 300.0,
              height: 300.0,
            )

                // child: new Image.asset(
                //   "assets/images/fast-food.png",
                //   height: 100.0,
                //   width: 100.0,
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
