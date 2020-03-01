import 'dart:convert' as json;

import 'package:flutter/material.dart';
import 'package:plan_p/Models/birth_control.dart';

//import '../configs/AppColors.dart';
import '../models/birth_control.dart';

// Parses Pokemon.json File
Future<List<Birth_Control>> getBirthControlList(BuildContext context) async {
  //makes a big string
  String jsonString = await DefaultAssetBundle.of(context)
      .loadString("assets/birth_control.json");

  //break the string into multiple section
  List<dynamic> jsonData = json.jsonDecode(jsonString);

  //jsonData['id'], pokemoms in a array where every elemennt is a pokemon object/class
  List<Birth_Control> birth_controls =
      jsonData.map((json) => Birth_Control.fromJson(json)).toList();

  return birth_controls;
}
