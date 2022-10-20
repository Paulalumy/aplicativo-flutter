import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(

         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text('Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                ),
                ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 15)
            ),
           Row(
            children: [
              Icon(Icons.login_outlined),
              Text('Fazer login',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
              
            ],
           ),
           Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.app_registration_outlined),
              Text('Cadastro Doador',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
           Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.app_registration_rounded),
              Text('Cadastro ONG',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
           Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.app_registration_sharp),
              Text('Cadastro Receptor',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.app_registration_sharp),
              Text('Cadastro Medicamento para Doação',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
           Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.app_registration_sharp),
              Text('Cadastro Medicamento Requerido',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
           Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.list_sharp),
              Text('Lista Medicamentos para Doação',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
           Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.list_sharp),
              Text('Lista Medicamentos Requeridos',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
           Row(
            children: [
              Icon(Icons.speaker_notes),
              Text('Sobre',
              style: TextStyle(color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
            ],
           ),
          ],
        ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 223, 218, 219),
          title: Center(
            child: Text('Ludovico',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
        ),
      ),
    );
  }
}