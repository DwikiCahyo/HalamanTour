

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempat Wisata Bandaung',
      theme: ThemeData(),
      home: HalamanDetail(),
      
    );
  }
}

class HalamanDetail  extends StatelessWidget {
  // const HalamanDetail ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

      child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children:<Widget> [

        //Membuat title ditengaah(kolom 1)
        Container(
          margin: EdgeInsets.only(top: 16.0),
          child: Text("Farm House Lembang",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize:30.0,
            fontWeight: FontWeight.bold,
           ),
           ),
        ),


        //Membuat informasi widget secara horizontal(kolom 2)
        Container(
          margin:EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Column(
                    children:<Widget> [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text("Buka setiap Hari"),
                    ],
                  ),
                   Column(
                    children:<Widget> [
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0,),
                      Text("09:00 - 20:00"),
                    ],
                  ),
                  Column(
                    children:<Widget> [
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0,),
                      Text("Rp 20.000")
                    ],
                  ),
                ]
             ),
           ),


        //Membuat halaman infomasi lebih lanjut(kolom 3)
        Container(
          padding: EdgeInsetsDirectional.all(16.0),
          child: Text(
            'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0
            ),
          ),
        )

        ],
        ),
      ),

    );
    
  }
}