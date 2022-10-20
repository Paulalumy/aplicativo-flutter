import 'package:flutter/material.dart';
import 'package:flutter_application_3/sreen/cadastro_doador.dart';
import 'package:flutter_application_3/sreen/cadastro_medicamento_doa%C3%A7%C3%A3o.dart';
import 'package:flutter_application_3/sreen/cadastro_medicamento_requerido.dart';
import 'package:flutter_application_3/sreen/cadastro_ong.dart';
import 'package:flutter_application_3/sreen/cadastro_receptor.dart';
import 'package:flutter_application_3/sreen/lista_medicamento_doa%C3%A7%C3%A3o.dart';
import 'package:flutter_application_3/sreen/lista_medicamento_requerido.dart';
import 'package:flutter_application_3/sreen/login_screen.dart';
import 'package:flutter_application_3/sreen/menu_screen.dart';
import 'package:flutter_application_3/sreen/escolha_cadastro.dart';
import 'package:flutter_application_3/sreen/sobre.dart';


void main() {
  runApp(MyApp());
}
  class MyApp extends StatelessWidget {
    
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
         title: 'Ludovico',
         home: CadastroDoador(),
         debugShowCheckedModeBanner: false,
      );
    }
  }