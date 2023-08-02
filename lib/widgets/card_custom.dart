import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String imagem;
  final String nome;
  const CardCustom({required this.imagem, required this.nome, super.key});

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
