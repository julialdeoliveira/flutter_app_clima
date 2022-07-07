import 'package:flutter/material.dart';
import 'card_weather_home.dart';
import 'list_text_horizontal.dart';
import 'player.dart';
import 'wrap_containers.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
           CardWeatherHome(),
           SizedBox(height: 50),
           ListTextHorizontal(),

          WrapContainer(),
           SizedBox(height: 5),
           Player(),
        ],
      ),
    );
  }
}
