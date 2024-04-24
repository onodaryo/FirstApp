import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dice/styledText.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key}); // GradientContainer({key}): super(key: key); でも可

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 150, 2, 53),
            Color.fromARGB(255, 49, 7, 160),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
