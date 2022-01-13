import 'package:flutter/material.dart';

class Mountain {
  final String name;
  final String image;
  final String desc;

  Mountain({this.image, @required this.name,this.desc});
}

List<Mountain> dataMountain = [
  Mountain(name: 'Rinjani', image: 'assets/rinjani.jpg',desc:'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 mdpl serta terletak pada lintang 8º25\' LS dan 116º28\' BT ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya.'),
  Mountain(name: 'Kerinci', image: 'assets/kerinci.jpeg',desc:'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 mdpl serta terletak pada lintang 8º25\' LS dan 116º28\' BT ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya.'),
  Mountain(name: 'Semeru', image: 'assets/semeru.jpg',desc:'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 mdpl serta terletak pada lintang 8º25\' LS dan 116º28\' BT ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya.'),
];
