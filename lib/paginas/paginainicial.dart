import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/imagemfundo.png'), // Substitua pelo caminho da sua imagem
            fit: BoxFit.cover, // Pode ajustar o ajuste da imagem
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
              'plante uma árvore,',
              style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 255, 255, 255),backgroundColor: Colors.transparent),
            ),
              Text(
              'traga o verde da vida.',
              style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 255, 255, 255),backgroundColor: Colors.transparent),
            ),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('LOGIN'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                child: const Text("Criar uma conta"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}