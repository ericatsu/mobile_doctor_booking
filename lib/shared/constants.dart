import 'package:flutter/material.dart';

class Palette {
  static const Color kPrimaryColor = Color(0xff198EB6);
  static LinearGradient linecolor = const LinearGradient(
          colors: [Colors.teal, Colors.green],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        );
}

class SizeQuery {

  final BuildContext context;

  SizeQuery (this.context);

  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
}

Shader authColors = const LinearGradient(
  colors: <Color>[Color.fromARGB(255, 0, 129, 116), Color.fromARGB(255, 177, 248, 179)],
).createShader(const Rect.fromLTWH(200.0, 0.0, 200.0, 150.0));

class Images {
  static const String imagesPath = 'assets/images/';
  static const String splash = '${imagesPath}logo.png';
}

