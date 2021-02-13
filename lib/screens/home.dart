import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key) {}

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  void _goToCart() {
    Navigator.pushNamed(this.context, '/cart');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        bottomOpacity: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
            alignment: Alignment.topLeft,
            icon: Icon(Icons.menu_outlined,
                color: Colors.grey.shade600, size: 32),
            onPressed: () => {},
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.topRight,
            child: IconButton(
                padding: EdgeInsets.all(4),
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.grey.shade500,
                ),
                onPressed: () => _goToCart()),
          )
        ],
      ),
      body: Container(
        color: Colors.white60,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                'Food',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  'Delivery',
                  style: TextStyle(fontSize: 35, color: Colors.grey.shade400),
                ))
          ],
        ),
      ),
    );
  }
}
