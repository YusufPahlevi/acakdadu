import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class dice_roller3 extends StatefulWidget {
  const dice_roller3({super.key});

  @override
  State<dice_roller3> createState() {
    return _DiceRollerState();
    
  }
}

class _DiceRollerState extends State<dice_roller3> {
  var currentDiceRoll = 2;
  var currentDiceRoll1 = 2;
    var currentDiceRoll2 = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
      
    });
  }

  @override
  build(context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 100,
          height: 100,
        ),
       Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll1.png',
          width: 100,
          height: 100,
        ),
        Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll2.png',
          width: 100,
          height: 100,
        ),
  
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
       ),
      ],
        ),
      ], 
    );
  



    
  }
}
