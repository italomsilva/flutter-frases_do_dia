import 'package:flutter/material.dart';
import 'dart:math';

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
  var _frase = "Clique para gerar uma Frase.";
  final _frases = [
    "Acredite na magia de novos começos. Hoje é o seu dia para brilhar!",
    "Nunca subestime o poder de um pequeno passo positivo. Cada um leva você mais perto do seu sonho.",
    "Sua maior limitação é você mesmo. Acredite em suas capacidades e veja o impossível se tornar possível.",
    "Você tem o poder de criar sua própria história. Comece hoje.",
    "Se não deu certo hoje, respire fundo, relaxe e agradeça por ter a chance de tentar de novo amanhã.",
    "Nunca desista. O momento mais escuro é justo antes do amanhecer.",
    "Todo dia é uma nova chance de ser melhor. Não desperdice.",
    "A determinação de hoje é o sucesso de amanhã. Mantenha-se firme em seus objetivos.",
    "Encare cada desafio como uma oportunidade de crescer. Você é mais forte do que pensa.",
    "O sucesso começa com a vontade de tentar. Dê o primeiro passo com confiança.",
    "Transforme seus medos em combustível para sua jornada. Eles não podem pará-lo, a menos que você permita.",
    "A gratidão abre as portas para a abundância. Seja grato por hoje.",
    "A felicidade é encontrada ao longo do caminho, não apenas no destino. Aprecie cada momento.",
    "Seja a luz em meio à escuridão. Sua positividade pode iluminar o mundo.",
    "Acredite em si mesmo com tanta força que o mundo não pode deixar de acreditar em você também.",
    "Nunca é tarde demais para ser quem você poderia ter sido. Comece hoje.",
    "Mantenha-se focado em suas metas. A persistência é o caminho para o sucesso.",
    "Nada é mais poderoso que uma mente positiva. Cultive bons pensamentos.",
    "Seja gentil com você mesmo. O progresso é o que importa, não a perfeição.",
    "O verdadeiro sucesso é medido pela sua felicidade. Não pela opinião dos outros.",
    "A vida é um eco; você recebe o que emite. Espalhe positividade.",
    "Abra as asas e voe. Você é capaz de alcançar alturas inimagináveis.",
    "A simplicidade traz uma clareza que complicações não podem. Simplifique sua vida, clarifique seus sonhos.",
    "Abrace a incerteza. Algumas das mais belas páginas da vida não têm título até serem escritas.",
    "Abrace suas imperfeições. Elas são marcas de autenticidade.",
    "A força não vem da vitória. Seus esforços desenvolvem suas forças.",
    "Deixe para trás o que não serve mais. Renove-se com cada amanhecer.",
    "Confie no tempo; ele tem uma maneira de mostrar o que realmente importa.",
    "O verdadeiro crescimento começa no final da sua zona de conforto. Desafie-se.",
    "O sucesso não é apenas sobre alcançar metas, mas sobre superar obstáculos.",
    "A vida é um mosaico de momentos. Faça cada um contar.",
    "Mantenha-se positivo quando a tempestade chegar. Ela passará.",
    "Seus sonhos têm valor. Lute por eles com determinação e paixão.",
    "A paciência é a chave para a conquista. Tudo vem a tempo para quem sabe esperar.",
    "Sua atitude determina sua direção. Escolha a positividade.",
    "Todo progresso começa com a decisão de tentar. Dê o passo.",
    "Liberte-se das expectativas. Viva de acordo com seus próprios termos."
  ];

  void _getFrase(){
    var numRandom = Random().nextInt(_frases.length);
    setState(() {
      _frase= _frases[numRandom];
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF176b5b),
        title: const Text("Frases do Dia",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/foto.jpg"),

            Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
             child: Align(
               alignment: Alignment.center,
               child: Text("$_frase",
                 textAlign: TextAlign.center,
                 style:
                 const TextStyle(
                   fontSize: 25,
                 ),
               ),
             ),
           ),

            ElevatedButton(
                onPressed: _getFrase,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,

                ),
                child: Text("Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
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
