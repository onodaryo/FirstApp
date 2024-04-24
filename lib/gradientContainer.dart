import 'package:flutter/material.dart';
import 'package:dice/styledText.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientFirst, this.gradientEnd,
      {super.key}); // GradientContainer({key}): super(key: key); でも可
  const GradientContainer.purple({super.key})
      : gradientFirst = Colors.deepPurple,
        gradientEnd = Colors.indigo;

  final Color gradientFirst;
  final Color gradientEnd;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            gradientFirst,
            gradientEnd,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/dice_images/dice-2.png',
          width: 200,
        ),
      ),
    );
  }
}
