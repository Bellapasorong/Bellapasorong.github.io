import 'package:flutter/material.dart';

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Order"),
      ),
      backgroundColor: Color(0xFFFFEEEE),
      body: ListView(
        children: <Widget>[
          Text("YUK DI ORDER ARMY",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, height: 5)),
          Container(
            height: 350,
            child: Image.asset('assets/decor.jpg'),
          ),
          Text(
            'Room Decor Rp 5.000.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/hoodie.jpg'),
          ),
          Text(
            'Hoodie Rp 500.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/BTS Merchandise.png'),
          ),
          Text(
            'Room Decor Rp 2.000.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/kpop.jpg'),
          ),
          Text(
            'Accessories (Doll) Rp 500.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/Dolls.jpg'),
          ),
          Text(
            'Hoodie Rp 1.000.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/Sweater.jpg'),
          ),
        ],
      ),
    );
  }
}
