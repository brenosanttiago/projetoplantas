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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                SizedBox(
                  width: 56, 
                  height: 56, 
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 56, 56, 56).withOpacity(0.5),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Icon(Icons.arrow_back, size: 24),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Bebas Neue',
                        fontSize: 24,
                        color: Colors.white,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(height: 8, 
                    ),
                    SizedBox(
                      width: 200,
                      height: 32, 
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Nome',
                          labelStyle: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Bebas Neue'),
                          hintStyle: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Bebas Neue'),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 56, 56, 56).withOpacity(0.5),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Bebas Neue'),
                        cursorColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8, 
                    ),
                    SizedBox(
                      width: 200,
                      height: 32, 
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Bebas Neue'),
                          hintStyle: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Bebas Neue'),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 56, 56, 56).withOpacity(0.5),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Bebas Neue'),
                        cursorColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 56, 
                height: 56, 
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 56, 56, 56).withOpacity(0.5),
                  foregroundColor: const Color.fromARGB(255, 250, 250, 250),
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  child: Icon(Icons.arrow_forward, size: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
