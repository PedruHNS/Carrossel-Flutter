import 'package:flutter/material.dart';
import 'package:teste/data/repository.dart';

import '../widgets/card_custom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final lista = Repository.lista;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            return CardCustom(
              nome: lista[index].name,
              imagem: lista[index].image,
            );
          },
          separatorBuilder: (_, __) => const Divider()),
    );
  }
}
