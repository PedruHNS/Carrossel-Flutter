import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Carrossel1(),
            Carrossel2(),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String imagem;
  final String nome;
  const Card({required this.imagem, required this.nome, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                  )
                ]),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(imagem)),
          ),
          Text(
            nome,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Carrossel1 extends StatelessWidget {
  const Carrossel1({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 250,
        child: SizedBox(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "1º Carrossel",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Card(
                      imagem: "images/dart.png",
                      nome: "Dart",
                    ),
                    Card(
                      imagem: "images/firebase.png",
                      nome: "Firebase",
                    ),
                    Card(
                      imagem: "images/flutter.png",
                      nome: "Flutter",
                    ),
                    Card(
                      imagem: "images/ionic.png",
                      nome: "Ionic",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Carrossel2 extends StatelessWidget {
  const Carrossel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 250,
        child: SizedBox(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "2º Carrossel",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Card(
                      imagem: "images/kotlin.png",
                      nome: "Kotlin",
                    ),
                    Card(
                      imagem: "images/node.png",
                      nome: "Node.js",
                    ),
                    Card(
                      imagem: "images/postgree.png",
                      nome: "Postgree",
                    ),
                    Card(
                      imagem: "images/react.png",
                      nome: "React",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
