import 'package:flutter/material.dart';

class HeroData {
  final String name;
  final String description;
  final String imageAsset;

  final UniqueKey key = UniqueKey();

  HeroData(this.name, this.description, this.imageAsset);
}

class DemoData {
  static final List<HeroData> _heroes = [
    HeroData('Iron Man', 'I am Iron Man',
        'http://i.annihil.us/u/prod/marvel/i/mg/9/c0/527bb7b37ff55.jpg'),
    HeroData('Thanos', 'Thanos',
        'https://i.annihil.us/u/prod/marvel/i/mg/6/40/5274137e3e2cd.jpg'),
    HeroData('Wolverine', 'I am Wolverine',
        'https://i.annihil.us/u/prod/marvel/i/mg/2/60/537bcaef0f6cf.jpg'),
    HeroData('Bulleyes', 'I am Bullseye',
        'http://i.annihil.us/u/prod/marvel/i/mg/6/30/539a08f322fd1.jpg'),
  ];

  List<HeroData> get heroes => _heroes;
}
