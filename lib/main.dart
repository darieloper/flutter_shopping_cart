import 'package:flutter/material.dart';
import 'package:shopping_cart_app/screens/cart.dart';
import 'package:shopping_cart_app/screens/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DetailsPage(title: 'Flutter Demo Home Page'),
      routes: {
        '/details': (context) => DetailsPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
