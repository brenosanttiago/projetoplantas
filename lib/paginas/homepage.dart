import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 52, 20),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 50, 
              color: Colors.transparent, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                    Navigator.pushNamed(context, '/');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {
                    Navigator.pushNamed(context, '/pesquisa'); 
                    },
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "REGA DE HOJE",
                    style: TextStyle(
                      fontFamily: 'Bebas Neue',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5, 
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200, 
                          color: Colors.transparent, 
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
                color: Colors.white, 
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
                  
                   
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        Navigator.pushNamed(context, '/homepage'); 
                      },
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20), 
                        child: Text(
                          "MINHAS PLANTAS",
                          style: TextStyle(
                            fontFamily: 'Bebas Neue',
                            fontSize: 20,
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
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Você possui 15 plantas",
                          style: TextStyle(
                            fontFamily: 'Bebas Neue',
                            fontSize: 12,
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
              color: Colors.white, 
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
