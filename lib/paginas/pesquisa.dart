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
              color: Colors.transparent, 
              margin: EdgeInsets.only(top: 20), 
              height: 60, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 40), 
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 19, 52, 20), 
                        borderRadius: BorderRadius.circular(5), 
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            onPressed: () {
                             
                            },
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white, fontFamily: 'Bebas Neue'),        
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
              color: Colors.transparent, 
              height: 200, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PESQUISAS RECENTES",
                    style: TextStyle(
                      fontFamily: 'Bebas Neue',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5, 
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200, 
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
                        Navigator.pushNamed(context, '/homepage'); 
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(height: 20), 
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 19, 52, 20), 
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30), 
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20), 
                    height: 2, 
                    width: 50,
                    color: Colors.grey, 
                  ),
                  SizedBox(height: 10), 
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20), 
                        child: Text(
                          "PLANTAS POPULARES",
                          style: TextStyle(
                            fontFamily: 'Bebas Neue',
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
              color: Color.fromARGB(255, 19, 52, 20),
              child: ListView.builder(
                itemCount: 5, 
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100, 
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
