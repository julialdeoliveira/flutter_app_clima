import 'package:exercicio_1/core/app_assets.dart';
import 'package:exercicio_1/presenter/home/home_page.dart';
import 'package:flutter/cupertino.dart';
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
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                        // image: Image.asset(imgCasal),
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/10/28/16/11/volcano-3779159_960_720.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 200, vertical: 15),
                    child: Text(
                      'Olá usuário!',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Italian'),
                    ),
                  ),
                  Text(
                    'Você está na segunda tela do nosso app, voltar aperte o arrow left na appBar',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Italian',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                 color: Colors.black, 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(CupertinoIcons.back, color: Colors.white),
                    Icon(CupertinoIcons.circle_filled, color: Colors.white), 
                    Icon(CupertinoIcons.forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CachedNetworkImage {}
//stl e tab cria a estrutura inicial de um stateless Widget