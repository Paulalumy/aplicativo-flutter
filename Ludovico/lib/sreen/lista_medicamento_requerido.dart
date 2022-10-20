import 'package:flutter/material.dart';

class ListaMedicamentoRequerido extends StatefulWidget {
  

  @override
  State<ListaMedicamentoRequerido> createState() => _ListaMedicamentoRequeridoState();
}

class _ListaMedicamentoRequeridoState extends State<ListaMedicamentoRequerido> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list, color: Colors.black,),
          backgroundColor: Color.fromARGB(255, 223, 218, 219),
          title: Text("Lista de Medicamentos Requeridos",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
        body: 
            buildListView() ,
          
        ),
    );
    
  }
  buildListView() {
    final medicamentos  = List<String>.generate(10000, 
    (i) => "Medicamento $i");

    return 
        ListView.builder(
       itemCount: medicamentos.length,
       itemBuilder: (context,index)
       {
        return ListTile(
          title: Text('${medicamentos[index]}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
          ),
          leading: Icon(Icons.medication_rounded),
          selected: true,
          onLongPress: () {
            print("ok");
          },
        );
       },
    );
  
  }
}