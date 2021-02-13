import 'package:flutter/material.dart';
import 'package:shopping_cart_app/screens/cart.dart';
import 'package:shopping_cart_app/screens/details.dart';
import 'package:shopping_cart_app/screens/home.dart';

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
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/details': (context) => DetailsPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
