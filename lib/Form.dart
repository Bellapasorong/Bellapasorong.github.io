import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controlerDepan = TextEditingController();
  TextEditingController controlerBelakang = TextEditingController();
  String namaDepan = "", namaBelakang = "";

  List<String> hobi = ["accessories", "hoodie", "room decor"];
  String hobiGroup = "";

  @override
  void dispose() {
    controlerDepan.dispose();
    controlerBelakang.dispose();
    super.dispose();
  }

  void hapusValuie() {
    controlerDepan.text = "";
    controlerBelakang.text = "";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB667F1),
      appBar: AppBar(
        title: Text("151_Hilary"),
        backgroundColor: Color(0xFFFA4EAB),
      ),
    
      body: ListView(
        children: [
          
          Column(
            children: [
 
                
              
              Text(
                'BTS Merchandise',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  height: 2,
                ),
              ),
             
              
          
              SizedBox(height: 20),
              TextFormField(
                controller: controlerBelakang,
                decoration: InputDecoration(
                  labelText: "Masukkan Nama Depan",
                  border: OutlineInputBorder(),
                ),
              ),
               Container(
              
                child: TextField(
                  controller: controlerDepan,
                  decoration: InputDecoration(
                    hintText: "Masukkan Nama Belakang",
                    border: OutlineInputBorder(),
                    
                  ),
                ),
                
                
              ),

              for (var item in hobi)
                Row(
                  children: [
                    Radio(
                        value: item,
                        groupValue: hobiGroup,
                        onChanged: (newValue) {
                          setState(() {
                            hobiGroup = newValue.toString();
                          });
                        }),
                    Text(item),
                  ],
                  
                ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    namaDepan = controlerDepan.text;
                    namaBelakang = controlerBelakang.text;
                    hapusValuie();
                  });
                },
                child: Text("Submit"),
              ),
              Text("Nama Depan Anda    : $namaBelakang"),
              Text("Nama Belakang Anda : $namaDepan"),
              Text("Orderan Anda  : $hobiGroup"),
            ],
          )
          
        ],
      ),
    );
  }
}
