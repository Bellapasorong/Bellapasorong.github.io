import 'package:flutter/material.dart';
import 'package:posttest4_1915016151/MainPage.dart';
import 'package:posttest4_1915016151/Form.dart';

class MyLanding extends StatelessWidget {
  const MyLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Postest4 Hillary"),),
      backgroundColor: Color(0xFF8A39E1),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 300,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bangtan.jpg"),
                  ),
                ),
              ),
              Text(
                "BTS Merchandise",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF0A500),
                  height: 2,
                  //backgroundColor: Colors.black,
                ),
              ),
              Text(
                "BTS Merch bring joy and admiration as a fanbase",
                textAlign: TextAlign.start,
                style: TextStyle(
                  height: 2.0,
                  // letterSpacing: 1,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "About BTS!!",
                style: TextStyle(
                    height: 5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double),
              ),
              Text(
                "Halo guys mungkin ada dari kalian yang ga tau BTS nih, so kalian harus baca ini yak >.< ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                "BTS (Korean: 방탄소년단; RR: Bangtan Sonyeondan), also known as the Bangtan Boys, is a South Korean boy band that was formed in 2010 and debuted in 2013 under Big Hit Entertainment. The septet—consisting of members Jin, Suga, J-Hope, RM, Jimin, V, and Jungkook—co-writes and co-produces much of their own output. Originally a hip hop group, their musical style has evolved to include a wide range of genres. Their lyrics, often focused on personal and social commentary, touch on the themes of mental health, troubles of school-age youth and coming of age, loss, the journey towards loving oneself, and individualism. Their work also often references literature and psychological concepts and includes an alternative universe storyline.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2.0,
                  // letterSpacing: 1,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(
                    isActive: true,
                    size: "accessories",
                  ),
                  SizeContainer(isActive: true, size: "hoodie"),
                  SizeContainer(isActive: true, size: "room decor"),
                ],
              ),
              ElevatedButton(child: Text("Halaman Selanjutnya"), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return MyMain();
                }));
              },)
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Tombol Menu"),
            decoration: BoxDecoration(
              color: Colors.amber
            ),),
            ListTile(
              title: Text("Pindah ke halaman form"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return MyHomePage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 500,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/logo.jpg"),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 18,
          height: 20,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Color(0xFFFFBDE6),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 94, 170),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(offset: Offset(0, 4), blurRadius: 5),
          ]),
      child: Text(
        "Login >>",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          letterSpacing: 2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
