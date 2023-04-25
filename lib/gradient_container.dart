import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  GradientContainer(this.color1, this.color2, {super.key});

   GradientContainer.purple({super.key})
      : color1 = Colors.black87,
        color2 = Colors.black12;
  final Color color1;
  final Color color2;

  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 100,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                /*padding: const EdgeInsets.only(top: 20,),*/
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              child: const Text('Roll Dice')),
          ],
        ),
      ),
    );
  }
}

/*
class GradientContainer extends StatelessWidget{
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('MUSINSA'),
      ),
    );
  }
}*/
