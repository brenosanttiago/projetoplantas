import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 50, // Altura do conteiner superior
              color: Colors.transparent, // Cor de fundo do conteiner superior
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                    Navigator.pushNamed(context, '/');// Adicione a lógica para a ação de voltar aqui
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                    Navigator.pushNamed(context, '/pesquisa'); // Adicione a lógica para a ação de pesquisa aqui
                    },
                  ),
                ],
              ),
              
            ),
          ),
SliverToBoxAdapter(
            child: Container(
              color: Colors.transparent, // Cor de fundo do conteiner do meio
              height: 200, // Altura do conteiner do meio
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "REGA DE HOJE",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5, // Número de imagens
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200, // Largura de cada item de imagem
                          color: Colors.transparent, // Cor de fundo do item de imagem
                          child: Image.asset('images/tresplantas.png'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
         
  SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Cor de fundo do conteiner de baixo
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), // Borda superior esquerda arredondada
                  topRight: Radius.circular(30), // Borda superior direita arredondada
                ),
              ),
              
              child: Column(
                children: [
                  SizedBox(height: 10), // Espaço entre a parte superior e a linha decorativa
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20), // Espaçamento horizontal
                    height: 2, // Altura da linha decorativa
                    width: 50,
                    color: Colors.grey, // Cor da linha
                  ),
                  SizedBox(height: 10),
                  
                   // Espaço entre a linha decorativa e o texto
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        Navigator.pushNamed(context, '/homepage'); // Adicione a lógica para a ação de voltar aqui
                      },
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20), // Espaçamento à esquerda
                        child: Text(
                          "MINHAS PLANTAS",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20), // Espaçamento à esquerda
                        child: Text(
                          "Você possui 8 plantas",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white, // Cor de fundo do conteiner de baixo
              child: ListView.builder(
                itemCount: 5, // Número de imagens no conteiner de baixo
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100, // Altura de cada item de imagem
                    child: Image.asset('images/tresplantas.png'),
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
