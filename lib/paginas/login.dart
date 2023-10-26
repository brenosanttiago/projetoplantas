import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

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

              FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 71, 71, 71),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
            Navigator.pushNamed(context, '/');
            },
  child: Icon(Icons.arrow_left),
),

              SizedBox(height: 10),

              Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 71, 71, 71),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green), // Cor da linha quando o campo está focado
                  ),
                ),
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 71, 71, 71),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green), // Cor da linha quando o campo está focado
                  ),
                ),
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
              ),
              FloatingActionButton(
  backgroundColor: const Color.fromARGB(255, 71, 71, 71),
  foregroundColor: const Color.fromARGB(255, 250, 250, 250),
  onPressed: () {
    Navigator.pushNamed(context, '/homepage');
  },
  child: Icon(Icons.arrow_right),
),
            ],
          ),
        ),
      ),
    );
  }
}
