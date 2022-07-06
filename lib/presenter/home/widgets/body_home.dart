import 'package:flutter/material.dart';

import 'card_weather_home.dart';
import 'container_lamp_homr.dart';
import 'list_text_horizontal.dart';
import 'player.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CardWeatherHome(),
          const SizedBox(height: 50),
          const ListTextHorizontal(),

          Wrap(
            children: const [
              ContainerLampHome(),
              ContainerLampHome(),
              ContainerLampHome(),
              ContainerLampHome(),
            ],
          ),
          

          const SizedBox(height: 5),
          const Player(),
        ],
      ),
    );
  }
}





