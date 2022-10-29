import 'package:flutter/material.dart';

import 'launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS - PPB',
      home: LauncherPage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.red)),
          primarySwatch: Colors.red),
    );
  }
}
