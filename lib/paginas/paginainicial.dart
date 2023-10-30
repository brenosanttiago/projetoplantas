import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/imagemfundo.png'), 
            fit: BoxFit.cover, 
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
              'PLANTE UMA ÁRVORE,',
              style: TextStyle(fontFamily: 'Bebas Neue',fontSize: 24,color: Color.fromARGB(255, 255, 255, 255),backgroundColor: Colors.transparent),
            ),
              Text(
              'TRAGA O VERDE DA VIDA.',
              style: TextStyle(fontFamily: 'Bebas Neue',fontSize: 24,color: Color.fromARGB(255, 255, 255, 255),backgroundColor: Colors.transparent),
            ),
              SizedBox(height: 150),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom( primary: Color.fromARGB(255, 56, 56, 56).withOpacity(0.5),fixedSize: Size(230, 20),),
                child: Text('LOGIN',style: TextStyle(fontFamily: 'Bebas Neue'), ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
                child: const Text("Criar uma conta",style: TextStyle(fontFamily: 'Bebas Neue', color: Color.fromARGB(255, 255, 255, 255)), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}