import 'package:flutter/material.dart';

class MyMain extends StatelessWidget {
  const MyMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Order"),),
      body: ListView(
        children: <Widget>[
          Text(
            "YUK DI ORDER ARMY",
            textAlign: TextAlign.center,
          ),
          
          Container(
            height: 300,
            width: 300,
            child: Image.asset('assets/decor.jpg'),
            
          ),
          Text(
              'Room Decor Rp 5.000.000',
              textAlign: TextAlign.center,),
          
          Container(
            height: 300,
            width: 300,
            child: Image.asset('assets/hoodie.jpg'),
          ),
          Text(
              'Hoodie Rp 500.000',
              textAlign: TextAlign.center,),
          
          Container(
            height: 300,
            width: 300,
            child: Image.asset('assets/BTS Merchandise.png'),
          ),
          Text(
            'Accessories Rp 100.000',
            textAlign: TextAlign.center,
          )

        ],
        



      ),
    );
  }

}


