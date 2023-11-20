import 'package:drag_game/data/Global_item.dart';
import 'package:drag_game/pages/game_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MathPage extends StatefulWidget {
  const MathPage({super.key});
  static final String id='math_page';

  @override
  State<MathPage> createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
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
              width: 135,
              height: 130,
              child: Lottie.asset("assets/lottie/genius.json"),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Global.text="Math Quiz";
                      Global.image = 'assets/extra_image/forest.jpg';
                      Global.list = Global.MathQuiz;
                      Navigator.pushReplacementNamed(context, GamePage.id);

                    },
                    child: gameContainer('Mix games ', 'assets/extra_image/mixmath.jpg'),
                  ),
                  InkWell(
             onTap: (){
               Global.text="Math Quiz";
               Global.image='assets/extra_image/forest.jpg';
               Global.list=Global.MathQuiz;
               Navigator.pushReplacementNamed(context, GamePage.id);
             },
                    child: gameContainer("Add games", 'assets/extra_image/add_image.jpg'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget gameContainer(String name , String image){
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
