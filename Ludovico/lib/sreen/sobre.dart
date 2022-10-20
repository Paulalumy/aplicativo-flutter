// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        backgroundColor: Color.fromARGB(255, 223, 218, 219),
      ) ,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 200, vertical: 10),
        child: Column(
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/Ludovico6.png', height: 200,),
              Padding(padding: EdgeInsets.only(right: 20)),
              Text('Sobre Ludovico',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.justify,
              ),

            ],

           ),
           Padding(padding: EdgeInsets.only(bottom: 30)),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ludovico é uma plataforma computacional que visa a comunicação entre proprietários de animais de estimação e organizações não governamentais protetoras de animais para doação de medicamentos em condições válidas de uso.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
                Padding(padding: EdgeInsets.only(bottom: 50.0)),
                Icon(Icons.computer_sharp),
                Text('Desenvolvedoras',
                 style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ],
           ),
                Padding(padding: EdgeInsets.only(bottom: 35.0)),
                Row(
                   mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/Lu.png', height: 75,),
              Padding(padding: EdgeInsets.only(right: 20)),
              Text('Luciene Mota',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.justify,
              ),
              Padding(padding: EdgeInsets.only(right: 200)),
              Image.asset('assets/images/Paula.png', height: 75,),
              Padding(padding: EdgeInsets.only(right: 20)),
              Text('Paula Takeuchi',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.justify,
              ),
            ],

           ),
          ],
          ),
      ),
    );
  }
}