import 'package:basic_application/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Center(child: ContadorPage()));
  }
}
