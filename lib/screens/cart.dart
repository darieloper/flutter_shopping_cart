import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key) {}

  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void _goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottomOpacity: 0,
        leading: IconButton(
          alignment: Alignment.topLeft,
          icon: Icon(Icons.chevron_left, color: Colors.black, size: 32),
          onPressed: () => _goBack(context),
        ),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.46,
              child: ListView(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 15),
                    leading: Text(
                      'My Order',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  CartItemTile(
                      image: '', article: 'Brown Sugar', count: 1, price: 8.99),
                  CartItemTile(
                      image: '',
                      article: 'Cheesy Jalapenos',
                      count: 1,
                      price: 5.93),
                  CartItemTile(
                      image: '', article: 'Brown Sugar', count: 1, price: 6.99),
                ],
              )),
          Expanded(
              child: Container(
                  padding: EdgeInsets.only(left: 15, right: 10, top: 20),
                  color: Colors.grey.shade200,
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Payment',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 22,
                            backgroundColor: Colors.grey.shade200,
                            color: Colors.black54),
                      ),
                      Row(children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.32,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '**** 4832',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Text('\$25.99',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                height: 25,
                                child: Stack(
                                  children: [
                                    Positioned(
                                        child: ClipOval(
                                            child: Container(
                                          color: Colors.red,
                                          width: 23,
                                          height: 23,
                                        )),
                                        left: 0,
                                        top: 0),
                                    Positioned(
                                        child: ClipOval(
                                            child: Container(
                                          color: Colors.orange.shade500,
                                          width: 23,
                                          height: 23,
                                        )),
                                        left: 10,
                                        top: 0),
                                    Positioned(
                                        child: ClipOval(
                                            child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          color: Colors.orange.shade700,
                                          width: 7,
                                          height: 21,
                                        )),
                                        left: 5,
                                        top: 1),
                                    Positioned(
                                        child: ClipOval(
                                            child: Container(
                                          margin: EdgeInsets.only(right: 10),
                                          color: Colors.orange.shade700,
                                          width: 7,
                                          height: 21,
                                        )),
                                        left: 10,
                                        top: 1),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 20, top: 30),
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height:
                                      MediaQuery.of(context).size.height * 0.20,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black54,
                                    size: 28,
                                  ),
                                ),
                                Positioned.fill(
                                    child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(10),
                                    onTap: () => null,
                                  ),
                                ))
                              ],
                            )),
                      ]),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(15),
                        onPressed: () {},
                        color: Colors.green.shade500,
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Confirm Payment'.toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}

class CartItemTile extends StatelessWidget {
  final String image;
  final String article;
  final int count;
  final double price;

  CartItemTile({this.image, this.article, this.count, this.price});

  double get amount => count * price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 10),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Image.network(
            'http://www.pngmart.com/files/1/Burger-Transparent-PNG.png',
            width: 80,
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  this.article,
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    RawMaterialButton(
                        constraints: BoxConstraints(),
                        padding: EdgeInsets.all(4),
                        onPressed: () {},
                        child: Icon(Icons.add),
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.black))),
                    Padding(padding: EdgeInsets.only(left: 7)),
                    Text(
                      '${this.count}',
                      style: TextStyle(fontSize: 17),
                    ),
                    Padding(padding: EdgeInsets.only(left: 7)),
                    RawMaterialButton(
                        constraints: BoxConstraints(),
                        padding: EdgeInsets.all(4),
                        onPressed: () {},
                        child: Icon(Icons.remove),
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.black))),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              height: 30,
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(right: 10),
              child: Text('\$${this.amount}',
                  style: TextStyle(color: Colors.black54, fontSize: 22)),
            ),
          )
        ],
      ),
    );
  }
}
