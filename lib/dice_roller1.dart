import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class dice_roller1 extends StatefulWidget {
    static const String routeName = '/dice_roller1';
  const dice_roller1({super.key});

  @override
  State<dice_roller1> createState() {
    return _DiceRollerState();
    
  }
}

class _DiceRollerState extends State<dice_roller1> {
  var currentDiceRoll = 2;
 

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
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
    );
      
  



    
  }
}
