import 'package:drag_game/data/Global_item.dart';
import 'package:drag_game/pages/game_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/extra_image/forest.jpg"),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 125,
              height: 125,
              child: Lottie.asset("assets/lottie/bird.json"),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Global.text="English Quiz";
                      Global.image = 'assets/extra_image/forest.jpg';
                      Global.list = Global.EnglishAnimals;
                      Navigator.pushReplacementNamed(context, GamePage.id);

                    },
                    child: gameContainer('Animals game', 'assets/extra_image/animals.jpg'),
                  ),
                  InkWell(
                    onTap: () {
                      Global.text="English Quiz";
                      Global.image = 'assets/extra_image/forest.jpg';
                      Global.list = Global.EnglishFruits;
                      Navigator.pushReplacementNamed(context, GamePage.id);

                    },
                    child: gameContainer('Fruits game', 'assets/extra_image/fruits.jpg'),
                  ),
                  InkWell(
                    onTap: () {
                      Global.text="English Quiz";
                      Global.image = 'assets/extra_image/forest.jpg';
                      Global.list = Global.EnglishVegetables;
                      Navigator.pushReplacementNamed(context, GamePage.id);

                    },
                    child: gameContainer('Vegetables game', 'assets/extra_image/vegetables.jpg'),
                  ),
                  InkWell(
                    onTap: () {
                      Global.text="English Quiz";
                      Global.image = 'assets/extra_image/forest.jpg';
                      Global.list = Global.EnglishColor;
                      Navigator.pushReplacementNamed(context, GamePage.id);

                    },
                    child: gameContainer('Colors game', 'assets/extra_image/colors.jpg'),
                  ),
                  InkWell(
                    onTap: () {
                      Global.text="English Quiz";
                      Global.image = 'assets/extra_image/forest.jpg';
                      Global.list = Global.EnglishNumbers;
                      Navigator.pushReplacementNamed(context, GamePage.id);

                    },
                    child: gameContainer('Numbers game', 'assets/extra_image/numbers.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
            child: Image.asset(image,),
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