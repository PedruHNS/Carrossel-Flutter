// ignore_for_file: public_member_api_docs, sort_constructors_first
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
            Carrossel(
                nomeCarrossel: "catalogo 1",
                nomeCar1: "kotlin",
                imagemCard1: "images/kotlin.png",
                nomeCar2: "Node.js",
                imagemCard2: "images/node.png",
                nomeCar3: "Postgree",
                imagemCard3: "images/postgree.png",
                nomeCar4: "React",
                imagemCard4: "images/react.png"),
            Carrossel(
                nomeCarrossel: "catalogo 2",
                nomeCar1: "Dart",
                imagemCard1: "images/dart.png",
                nomeCar2: "Firebase",
                imagemCard2: "images/firebase.png",
                nomeCar3: "Flutter",
                imagemCard3: "images/flutter.png",
                nomeCar4: "Ionic",
                imagemCard4: "images/ionic.png"),
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
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                )
              ],
            ),
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

class Carrossel extends StatelessWidget {
  final String nomeCarrossel;
  final String nomeCar1;
  final String imagemCard1;
  final String nomeCar2;
  final String imagemCard2;
  final String nomeCar3;
  final String imagemCard3;
  final String nomeCar4;
  final String imagemCard4;

  const Carrossel({
    Key? key,
    required this.nomeCarrossel,
    required this.nomeCar1,
    required this.imagemCard1,
    required this.nomeCar2,
    required this.imagemCard2,
    required this.nomeCar3,
    required this.imagemCard3,
    required this.nomeCar4,
    required this.imagemCard4,
  }) : super(key: key);

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
                child: Text(
                  nomeCarrossel,
                  style: const TextStyle(
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
                  children: [
                    Card(
                      imagem: imagemCard1,
                      nome: nomeCar1,
                    ),
                    Card(
                      imagem: imagemCard2,
                      nome: nomeCar2,
                    ),
                    Card(
                      imagem: imagemCard3,
                      nome: nomeCar3,
                    ),
                    Card(
                      imagem: imagemCard4,
                      nome: nomeCar4,
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
