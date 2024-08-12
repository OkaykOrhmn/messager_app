import 'package:flutter/material.dart';
import 'package:messager_app/ui/theme/theme_helper.dart';

Future<Color> getPrimaryColor() async {
  int hax = await getPrimaryColorTheme();
  return Color(hax);
}
