import 'hero_scroll_view.dart';
import 'title_text.dart';
import 'label_image.dart';
import 'package:flutter/material.dart';

class HeroesListPage extends StatelessWidget {
  const HeroesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 46.0, 0.0, 46.0),
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            LabelImage(),
            TitleText(text: "Choose your hero"),
            Expanded(child: HeroScrollView())
          ],
        )));
  }
}
