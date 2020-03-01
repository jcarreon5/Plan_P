import 'package:flutter/material.dart';

import 'dart:collection';
//import '../data/pokemons.dart';

// ignore: camel_case_types
class Birth_Control {
  const Birth_Control({
    @required this.id,
    this.name,
    this.image,
    //this.types = const [],
    this.about,
    this.gender,
    this.effectiveness,
    this.usage,
    this.procedure,
    this.duration,
    this.insurence,
    this.delivery_method,
  });

  Birth_Control.fromJson(dynamic json)
      : id = json["id"],
        name = json["name"],
        image = json["imageurl"],
        effectiveness = json["effectiveness"],
        about = json["about"],
        gender = json["gender"],
        duration = json["duration"],
        delivery_method = json["delivery_method"],
        insurence = json["insurence"],
        usage = json["usage"],
        procedure = json["procedure"];

  final String about;
  final String effectiveness;
  final String duration;
  final String gender;
  final String id;
  final String image;
  final String delivery_method;
  final String name;
  final String insurence;
  final String usage;
  final String procedure;
}

//class PokemonModel extends ChangeNotifier {
//  final List<Pokemon> _pokemons = [];
//  int _selectedIndex = 0;
//
//  UnmodifiableListView<Pokemon> get pokemons => UnmodifiableListView(_pokemons);
//
//  bool get hasData => _pokemons.length > 0;
//
//  Pokemon get pokemon => _pokemons[_selectedIndex];
//
//  int get index => _selectedIndex;
//
//  static PokemonModel of(BuildContext context, {bool listen = false}) =>
//      Provider.of<PokemonModel>(context, listen: listen);
//
//  void setPokemons(List<Pokemon> pokemons) {
//    _pokemons.clear();
//    _pokemons.addAll(pokemons);
//
//    notifyListeners();
//  }
//
//  void setSelectedIndex(int index) {
//    _selectedIndex = index;
//
//    notifyListeners();
//  }
//}
