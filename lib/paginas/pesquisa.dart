import 'package:flutter/material.dart';

class Pesquisa extends StatelessWidget {
  const Pesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              color: Colors.transparent, // Cor de fundo do conteiner do topo
              margin: EdgeInsets.only(top: 20), // Afasta a barra de pesquisa do topo
              height: 60, // Altura do conteiner do topo
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 40), // Espaçamento horizontal
                      decoration: BoxDecoration(
                        color: Colors.green, // Cor de fundo da barra de pesquisa
                        borderRadius: BorderRadius.circular(5), // Borda arredondada
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              // Adicione a lógica para a ação de pesquisa aqui
                            },
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
            ),
          ),
          
          SliverToBoxAdapter(
            child: Container(
              color: Colors.transparent, // Cor de fundo do conteiner de cima
              height: 200, // Altura do conteiner de cima
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PESQUISAS RECENTES",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5, // Número de imagens
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200, // Largura de cada item de imagem
                          child: Image.asset('images/tresplantas.png'),
                        );
                      },
                    ),
                  ),
                  
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pushNamed(context, '/homepage'); // Adicione a lógica para a ação de voltar aqui
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(height: 20), // Espaço entre os conteúdos
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green, // Cor de fundo do conteiner de baixo
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
                  SizedBox(height: 10), // Espaço entre a linha decorativa e o texto
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20), // Espaçamento à esquerda
                        child: Text(
                          "PLANTAS POPULARES",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
              color: Colors.green, // Cor de fundo do conteiner de baixo
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
