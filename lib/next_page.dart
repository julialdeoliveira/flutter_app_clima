import 'package:exercicio_1/core/app_assets.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(imgCasal),
          Image.asset(imgDog),
          Image.asset(imgHeart),
        ],
      ),
    );
  }
}
//stl e tab cria a estrutura inicial de um stateless Widget