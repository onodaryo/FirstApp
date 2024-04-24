import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice_images/dice-2.png';

  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/dice_images/dice-4.png';
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(
              // top: 20,
              // ), //パディングでスペースを作る方法
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
