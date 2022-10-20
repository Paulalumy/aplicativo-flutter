import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EscolhaCadastro extends StatefulWidget {


  @override
  State<EscolhaCadastro> createState() => _EscolhaCadastroState();
}

class _EscolhaCadastroState extends State<EscolhaCadastro> {
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
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/Ludovico6.png', height: 300,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            Text(
              "Cadastro",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20),
              ),
              Text(
                'Clique em um tipo de usuário:',
                textAlign: TextAlign.center,
                style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
              ),
              Padding(padding: EdgeInsets.only(top:40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {},
                   style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(193, 229, 231, 231),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                        textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                          ),
                          ),
                   child: Text('Doador', style: TextStyle(color:Colors.black)),
                   ),
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    ),

                   ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(193, 229, 231, 231),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                        textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                          ),
                          ),
                    child: Text('ONG', style: TextStyle(color:Colors.black)),
                    ),
                     Padding(
                    padding: EdgeInsets.only(right: 50),
                    ),

                    ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(193, 229, 231, 231),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                        textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold
                          ),
                          ),
                    child: Text('Receptor', style: TextStyle(color:Colors.black)),
                    ),
                ],
                ),
          ],
          ),
          ),
          
      ),
    );
  }
}