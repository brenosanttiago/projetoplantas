import 'package:flutter/material.dart';
import 'package:projetoplantas/paginas/cadastro.dart';
import 'package:projetoplantas/paginas/homepage.dart';
import 'package:projetoplantas/paginas/login.dart';
import 'package:projetoplantas/paginas/paginainicial.dart';

class Rotas extends StatelessWidget {
  const Rotas({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Navegação com Rotas',
      initialRoute: '/',
      routes: {
        '/': (context) => PaginaInicial(),
        '/login': (context) => Login(),
        '/cadastro': (context) => Cadastro(),
        '/homepage': (context) => Homepage(),
      },
    );
  }
}