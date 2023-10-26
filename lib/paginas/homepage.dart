import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Container(
            height: 50, // Altura do conteiner horizontal superior
            color: Colors.blue, // Cor de fundo do conteiner superior
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    // Adicione a lógica para a ação de voltar aqui
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Adicione a lógica para a ação de pesquisa aqui
                  },
                ),
              ],
            ),
          ),
          Text(
                'PLANTAS A REGAR',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  backgroundColor: Colors.transparent,
                ),
              ),
          Container(
            height: 200, // Altura do conteiner horizontal do meio
            color: Colors.red, // Cor de fundo do conteiner do meio
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // Número de imagens
              itemBuilder: (context, index) {
                return Container(
                  width: 200, // Largura de cada item de imagem
                  color: Colors.orange, // Cor de fundo do item de imagem
                  child: Image.asset('images/conjuntoplantas.png'),
                );
              },
            ),
          ),


          Expanded(
            child: Container(
              color: Colors.white, // Cor de fundo do conteiner vertical
              child: ListView.builder(
                itemCount: 10, // Número de imagens no conteiner de baixo
                itemBuilder: (context, index) {
                  return Container(
                    height: 100, // Altura de cada item de imagem
                    color: Colors.grey, // Cor de fundo do item de imagem
                    child: Image.asset('images/conjuntoplantas.png'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}