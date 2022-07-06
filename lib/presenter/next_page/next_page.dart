import 'package:exercicio_1/core/app_assets.dart';
import 'package:exercicio_1/presenter/home/home_page.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Minha segunda tela'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }),
              );
            },
            icon: const Icon(
              Icons.heart_broken,
              size: 40,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imgCasal),
            const Padding(
              padding: EdgeInsets.all(60),
              child: Text(
                'Aqui temos um casal',
                style: TextStyle(
                  fontFamily: 'Italian',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(imgDog),
            const Padding(
              padding: EdgeInsets.all(60),
              child: Text(
                'Um cachorro',
                style: TextStyle(
                  fontFamily: 'Italian',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(imgHeart),
            const Padding(
              padding: EdgeInsets.all(60),
              child: Text(
                'E uma mulher aleatória',
                style: TextStyle(
                  fontFamily: 'Italian',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
                textWidthBasis: TextWidthBasis.longestLine,
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.pink.shade100),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.heart_broken,
                        size: 35,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Essa é uma tela de imagens',
                            style: TextStyle(
                              fontFamily: 'Italian',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//stl e tab cria a estrutura inicial de um stateless Widget