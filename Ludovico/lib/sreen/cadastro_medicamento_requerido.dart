import 'package:flutter/material.dart';

class CadastroMedicamentoRequerido extends StatefulWidget {
  const CadastroMedicamentoRequerido({super.key});

  @override
  State<CadastroMedicamentoRequerido> createState() => _CadastroMedicamentoRequeridoState();
}

class _CadastroMedicamentoRequeridoState extends State<CadastroMedicamentoRequerido> {
  
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/Ludovico6.png', height: 300,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
            ),
            Text(
              "Cadastro Medicamento Requerido",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
             Padding(
              padding: EdgeInsets.only(bottom:30),
              ),
            Form(
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 
                children:[
                  Container(
                    height: 80,
                    width: 450,
                   child:TextFormField( 
                 decoration: InputDecoration(
                  hintText: "* Nome ",
                 hintStyle: TextStyle(color: Colors.red
                 ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                           color: Colors.black,
                            ),
                     ),
                     focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                           color: Colors.black,
                            ),
                  ),
                   
                 ),

                        ),
                  ),

                    
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                   Container(
                      height: 80,
                      width: 450,
                      child: TextFormField( 
                 decoration: InputDecoration(
                   
                  hintText: " *Quantidade",
                  hintStyle: TextStyle(
                    color:Colors.red,
                    ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                           color: Colors.red,
                            ),
                     ),
                     focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                           color: Colors.black,
                            ),
                  ),
                 ),

                        ),
                    ),
                        
                        
                    Container(
                      height: 20,
                      width: 420,
                            child: GestureDetector(
                              onTap:(){print("FUNCIONOU!");},
                              child: Text("*Preenchimento obrigatório",
                              style: TextStyle(
                                color: Colors.red, 
                                fontSize: 12,
                                ),
                                textAlign:TextAlign.left
                                ),
                            ),
                          ),
                        Padding(
                      padding: EdgeInsets.only(top: 20),
                     ),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(193, 229, 231, 231),
                        minimumSize: Size(15, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                        textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)
                          ),
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: Text("Cadastro realizado com sucesso!!!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          actions: <Widget>[
                            ElevatedButton(onPressed: () => Navigator.pop(context, "Ok"),
                             child: Text("OK",
                             style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                             ),
                             ),
                             ),      
                          ],
                        ),
                        ),
                      child: Text('Cadastrar', style: TextStyle(color:Colors.black)),
                      ),    
                      
                   ],
                 ), 
                 ), 
          ],
          ),
          ),
      ),
   );
  }
}