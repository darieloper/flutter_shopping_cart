import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  void _goToCart() {
    Navigator.pushNamed(this.context, '/cart');
  }

  void _goBack() {
    Navigator.pop(this.context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.45,
        leading: Container(
          alignment: Alignment.topLeft,
          //margin: EdgeInsets.only(top: 2),
          child: IconButton(
            alignment: Alignment.topLeft,
            icon: Icon(Icons.chevron_left, color: Colors.black),
            onPressed: _goBack,
            iconSize: 32,
          ),
        ),
        centerTitle: true,
        title: ClipRRect(
          child: Image.network(
            'http://www.pngmart.com/files/1/Burger-Transparent-PNG.png',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height * 0.40,
          ),
        ),
        actions: [
          Container(
              alignment: Alignment.topRight,
              child: IconButton(
                padding: EdgeInsets.all(4),
                icon: Icon(Icons.shopping_basket),
                onPressed: _goToCart,
              ))
        ],
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.yellow.shade400,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.yellow.shade400,
              child: Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailHeader(),
                    Padding(
                        padding: EdgeInsets.only(left: 18),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 24, color: Colors.grey.shade700),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 18, top: 15, right: 18),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade700),
                        )),
                    DetailFinancePart(),
                    DetailFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.all(18),
          child: Text('Brown Sugar',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 35)),
        ),
        FlatButton(
            onPressed: null,
            child: Icon(
              Icons.favorite_border,
              color: Colors.red.shade500,
              size: 30,
            )),
      ],
    );
  }
}

class DetailFinancePart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 20, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RawMaterialButton(
              constraints: BoxConstraints(),
              padding: EdgeInsets.all(7),
              onPressed: () {},
              child: Icon(Icons.add),
              shape: CircleBorder(side: BorderSide(color: Colors.black))),
          Padding(padding: EdgeInsets.only(left: 10)),
          Text(
            '1',
            style: TextStyle(fontSize: 17),
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          RawMaterialButton(
              constraints: BoxConstraints(),
              padding: EdgeInsets.all(7),
              onPressed: () {},
              child: Icon(Icons.remove),
              shape: CircleBorder(side: BorderSide(color: Colors.black))),
          Expanded(
              child: Text(
            '\$50.00',
            style: TextStyle(fontSize: 30, color: Colors.grey.shade700),
            textAlign: TextAlign.end,
          ))
        ],
      ),
    );
  }
}

class DetailFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18, top: 20, right: 18, bottom: 10),
      child: RaisedButton(
        onPressed: () {},
        color: Colors.green.shade500,
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Text(
            'Add to Cart'.toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
