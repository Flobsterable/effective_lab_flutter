import 'package:flutter/material.dart';

class LabelImage extends StatelessWidget {
  const LabelImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: 0.33,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
            child: Image(
              image: AssetImage('assets/images/marvel.png'),
            ),
          )),
    );
  }
}
