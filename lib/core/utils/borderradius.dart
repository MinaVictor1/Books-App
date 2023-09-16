import 'package:flutter/material.dart';

abstract class border {
  static const borderLeft = BorderRadius.only(
      topLeft: Radius.circular(24), bottomLeft: Radius.circular(24));
  static const borderRight = BorderRadius.only(
      topRight: Radius.circular(24), bottomRight: Radius.circular(24));
}
