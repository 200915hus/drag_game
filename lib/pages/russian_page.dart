import 'package:drag_game/data/Global_item.dart';
import 'package:drag_game/pages/game_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RussianPage extends StatefulWidget {
  static final String id = "russian_page";

  const RussianPage({super.key});

  @override
  State<RussianPage> createState() => _RussianPageState();
}

class _RussianPageState extends State<RussianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/extra_image/forest.jpg"),
        ),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.zero,
            height: 150,
            width: 150,
            child: Lottie.asset('assets/lottie/bird2.json'),
          ),

          Expanded(
              child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Global.text="Rusian Quiz";
                  Global.image = 'assets/extra_image/forest.jpg';
                  Global.list = Global.RussianAnimals;
                  Navigator.pushNamed(context, GamePage.id);
                },
                child: gameContainer(
                    'Игра «Животные»', 'assets/extra_image/animals.jpg'),
              ),
              InkWell(
                onTap: () {
                  Global.text="Russian Quiz";
                  Global.image = 'assets/extra_image/forest.jpg';
                  Global.list = Global.RussianFruits;
                  Navigator.pushNamed(context, GamePage.id);
                },
                child: gameContainer(
                    "Игра «Фрукты»", 'assets/extra_image/fruits.jpg'),
              ),
              InkWell(
                onTap: () {
                  Global.text="Russian Quiz";
                  Global.image = 'assets/extra_image/forest.jpg';
                  Global.list = Global.RussianVegetables;
                  Navigator.pushNamed(context, GamePage.id);
                },
                child: gameContainer(
                    "Игра «Овощи»", 'assets/extra_image/vegetables.jpg'),
              ),
              InkWell(
                onTap: () {
                  Global.text="Russian Quiz";
                  Global.image = 'assets/extra_image/forest.jpg';
                  Global.list = Global.RussianColor;
                  Navigator.pushNamed(context, GamePage.id);

                },
                child: gameContainer(
                    "«Игра Цвета»", 'assets/extra_image/colors.jpg'),
              ),
              InkWell(
                onTap: () {
                  Global.text="Russian Quiz";
                  Global.image = 'assets/extra_image/forest.jpg';
                  Global.list = Global.RussianNumbers;
                  Navigator.pushNamed(context, GamePage.id);
                },
                child: gameContainer(
                    "Игра чисел", 'assets/extra_image/numbers.jpg'),
              )
            ],
          ))
        ],
      ),
    ));
  }

  Widget gameContainer(String name, String image) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.brown.shade700, width: 5),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 210,
            child: Image.asset(
              image,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.brown.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
