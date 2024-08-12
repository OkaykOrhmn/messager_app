import 'package:flutter/material.dart';

const _defaultFontFamily = 'Dana';
//Headline
TextStyle headline1 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 24, fontFamily: _defaultFontFamily);
TextStyle headline2 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 20, fontFamily: _defaultFontFamily);
TextStyle headline3 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 18, fontFamily: _defaultFontFamily);
TextStyle headline4 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 16, fontFamily: _defaultFontFamily);
TextStyle headline5 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 14, fontFamily: _defaultFontFamily);
TextStyle headline5Eng =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14);

TextStyle headline6 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 12, fontFamily: _defaultFontFamily);

//Headline

//Body
TextStyle body1 = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    fontFamily: _defaultFontFamily);
TextStyle body1Eng =
    const TextStyle(fontWeight: FontWeight.normal, fontSize: 14);
TextStyle body2 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 14, fontFamily: _defaultFontFamily);
TextStyle body3 = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    fontFamily: _defaultFontFamily);
TextStyle body3Eng = const TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 12,
);
TextStyle body4 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 12, fontFamily: _defaultFontFamily);
TextStyle body5 = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 10,
    fontFamily: _defaultFontFamily);
TextStyle body5Eng = const TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 10,
);
TextStyle body6 = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 10, fontFamily: _defaultFontFamily);
//Body

extension AppTextStyle on TextTheme {
  TextStyle get headerBold => headline3;

  TextStyle get headerLargeBold => headline3;

  TextStyle get dialogTitle => headline4;

  TextStyle get titleBold => headline5;
  TextStyle get titleBoldEng => headline5Eng;

  TextStyle get title => body1;
  TextStyle get titleEng => body1Eng;

  TextStyle get navbarTitle => body5;
  TextStyle get navbarTitleEng => body5Eng;

  TextStyle get navbarTitleBold => body6;

  TextStyle get searchHint => body3;
  TextStyle get searchHintEng => body3Eng;

  TextStyle get rate => body4;

  TextStyle get rateBold => headline4;
}
