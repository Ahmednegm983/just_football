import 'package:flutter/material.dart';

import '../Pages/color.dart';

myStyle({family="Clash",double? size=14.0, color=colorwhite})
{
  return TextStyle(
      fontSize: size,
      color: color,
      fontFamily: family
  );
}