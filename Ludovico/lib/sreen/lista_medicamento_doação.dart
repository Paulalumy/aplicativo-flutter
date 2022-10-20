import 'package:flutter/material.dart';

class ListaMedicamentoDoacao extends StatefulWidget {
  

  @override
  State<ListaMedicamentoDoacao> createState() => _ListaMedicamentoDoacaoState();
}

class _ListaMedicamentoDoacaoState extends State<ListaMedicamentoDoacao> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list, color: Colors.black,),
          backgroundColor: Color.fromARGB(255, 223, 218, 219),
          title: Text("Lista de Medicamentos Disponíveis para Doação",
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