import 'package:flutter/material.dart';
import 'package:prueba1/src/pages/details_page.dart';
import 'package:prueba1/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tienda de coches",
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomePage(),
        "detail": (BuildContext context) => DetailsPage()
      },
    );
  }
}

