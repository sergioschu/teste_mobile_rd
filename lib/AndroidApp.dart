import 'package:flutter/material.dart';

import 'home/pages/home_page.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String titulo = "Super Hero - Teste RD";
    return MaterialApp(
      title: titulo,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        cardColor: Colors.lightGreen,
      ),
      home: HomePage(title: titulo),
    );
  }
}
