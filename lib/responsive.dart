library responsive;

import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  double _width;
  double _height;
  double _diagonal;
  double _diagonalDisplay;

  static Responsive set(BuildContext context,
          {@required int widthScreen, @required int heightScreen}) =>
      Responsive(context, widthScreen, heightScreen);

  Responsive(BuildContext context, int widthResolution, int heightResolution) {
    this._width = MediaQuery.of(context).size.width;
    this._height = MediaQuery.of(context).size.height;

    this._diagonalDisplay =
        math.sqrt(math.pow(widthResolution, 2) + math.pow(heightResolution, 2));

    this._diagonal =
        math.sqrt(math.pow(this._width, 2) + math.pow(this._height, 2));
  }

  double size(double number) => number * this._diagonal / this._diagonalDisplay;
}
