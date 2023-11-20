import 'package:drag_game/pages/english_page.dart';
import 'package:drag_game/pages/math_page.dart';
import 'package:drag_game/pages/russian_page.dart';
import 'package:flutter/material.dart';

class Orginal extends StatefulWidget {
  static final String id = "orginal_home_page";

  const Orginal({super.key});

  @override
  State<Orginal> createState() => _OrginalState();
}

class _OrginalState extends State<Orginal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/extra_image/forest.jpg"),
        )),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                "Drag Quiz",
                style: TextStyle(
                    color: Colors.white, fontSize: 45, fontFamily: "Billabong"),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: gameContainer(
                        'English Quiz', 'assets/orginal_extra_image/math.jpg'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MathPage.id);
                    },
                    child: gameContainer('Math Quiz',
                        'assets/orginal_extra_image/englishQuiz.jpg'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RussianPage.id);
                    },
                    child: gameContainer('Russian Quiz',
                        'assets/orginal_extra_image/russianQuiz.jpg'),
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
