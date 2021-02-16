import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key) {}

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = new TextEditingController();
  final ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
  }

  void _goToCart() {
    Navigator.pushNamed(this.context, '/cart');
  }

  void _goToDetail() {
    Navigator.pushNamed(this.context, '/details');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
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
        color: Colors.grey.shade50,
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
                  style: TextStyle(fontSize: 35, color: Colors.grey.shade500),
                )),
            Container(
                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: TextFormField(
                    controller: _controller,
                    cursorColor: Colors.grey.shade700,
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 32,
                      ),
                    ))),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            width: 120,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.75),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.lunch_dining,
                                  color: Colors.white,
                                  size: 38,
                                ),
                                Text('Humburguer',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            )),
                        Positioned.fill(
                            child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () => {},
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              width: 120,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.local_pizza,
                                    color: Colors.grey.shade900,
                                    size: 38,
                                  ),
                                  Text('Pizza',
                                      style: TextStyle(
                                          color: Colors.grey.shade900,
                                          fontSize: 15)),
                                ],
                              )),
                          Positioned.fill(
                              child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => {},
                            ),
                          ))
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              width: 120,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.free_breakfast,
                                    color: Colors.grey.shade800,
                                    size: 38,
                                  ),
                                  Text('Coffee',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 15)),
                                ],
                              )),
                          Positioned.fill(
                              child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => {},
                            ),
                          ))
                        ],
                      ))
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Hamburger',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.75),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: getRows(),
                    ),
                  ))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  List<Widget> getRows() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '\$8.48',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: Image.network(
                                'http://www.pngmart.com/files/1/Burger-Transparent-PNG.png',
                                width: 130,
                                height: 120,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  'Brown Sugar',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                          child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: _goToDetail,
                        ),
                      ))
                    ],
                  ))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '\$10.99',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: Image.network(
                                'http://www.pngmart.com/files/1/Burger-Transparent-PNG.png',
                                width: 130,
                                height: 120,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  'Cheesy Jalapenos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                          child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: _goToDetail,
                        ),
                      ))
                    ],
                  ))),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '\$8.48',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: Image.network(
                                'http://www.pngmart.com/files/1/Burger-Transparent-PNG.png',
                                width: 130,
                                height: 120,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  'Brown Sugar',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                          child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: _goToDetail,
                        ),
                      ))
                    ],
                  ))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '\$10.99',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: Image.network(
                                'http://www.pngmart.com/files/1/Burger-Transparent-PNG.png',
                                width: 130,
                                height: 120,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  'Cheesy Jalapenos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                          child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: _goToDetail,
                        ),
                      ))
                    ],
                  ))),
        ],
      ),
    ];
  }
}
