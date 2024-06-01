import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Home(),
    )
  );
}


class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frase = "Frase aqui";
  var _fraseRandom = [
    "MACACOOOOOO",
    "Feladaputa"
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF176b5b),
        title: const Text("Frases do dia"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/foto.jpg"),

            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
             child:
              Text("$_frase",
                style:
                  TextStyle(
                    fontSize: 20,
                  ),
              ),
           ),

            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _frase = _fraseRandom[0];
                    print(_frase);
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,

                ),
                child: Text("Mudar Frase"),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
            color: Color(0xFF00A884),
      ),
    );
  }
}
