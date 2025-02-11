import 'package:flutter/material.dart';
import 'package:roll_dice_teach/dice_roller1.dart';
import 'package:roll_dice_teach/dice_roller2.dart';
import 'package:roll_dice_teach/dice_roller3.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Solo'),
                Tab(text: 'Duo'),
                Tab(text: 'Trio'),
              ],
            ),
            title: const Text('Games Dadu'),
          ),
          body: const TabBarView(
            children: [
               dice_roller1(),
               dice_roller2(),
               dice_roller3(),
            ],
          ),
        ),
      ),
    );
  }
}
