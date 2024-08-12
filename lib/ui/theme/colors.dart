import 'package:flutter/material.dart';

extension ThemeDataApp on ThemeData {
  Color appPrimaryColor({final int? shade}) {
    var color = AppColors.primarycolor;
    switch (primaryColor) {
      case AppColors.blue:
        color = AppColors.blue;
        break;

      case AppColors.pink:
        color = AppColors.pink;
        break;

      case AppColors.green:
        color = AppColors.green;
        break;

      case AppColors.orange:
        color = AppColors.orange;
        break;

      case AppColors.red:
        color = AppColors.red;
        break;
    }
    switch (shade) {
      case 50:
        return color.shade50;
      case 100:
        return color.shade100;
      case 200:
        return color.shade200;
      case 300:
        return color.shade300;
      case 400:
        return color.shade400;
      case 600:
        return color.shade600;
      case 700:
        return color.shade700;
      case 800:
        return color.shade800;
      case 900:
        return color.shade900;
      case 500:
      default:
        return color.shade500;
    }
  }
}

class AppColors {
  static const MaterialColor primarycolor =
      MaterialColor(_primarycolorPrimaryValue, <int, Color>{
    50: Color(0xFFEBE8F1),
    100: Color(0xFFCDC6DB),
    200: Color(0xFFACA0C3),
    300: Color(0xFF8B7AAB),
    400: Color(0xFF725E99),
    500: Color(_primarycolorPrimaryValue),
    600: Color(0xFF513B7F),
    700: Color(0xFF483274),
    800: Color(0xFF3E2A6A),
    900: Color(0xFF2E1C57),
  });
  static const int _primarycolorPrimaryValue = 0xFF594187;

  static const MaterialColor primarycolorAccent =
      MaterialColor(_primarycolorAccentValue, <int, Color>{
    100: Color(0xFFB396FF),
    200: Color(_primarycolorAccentValue),
    400: Color(0xFF6930FF),
    700: Color(0xFF5617FF),
  });
  static const int _primarycolorAccentValue = 0xFF8E63FF;

  static const MaterialColor blue =
      MaterialColor(_bluePrimaryValue, <int, Color>{
    50: Color(0xFFE8F0F8),
    100: Color(0xFFC5DAEE),
    200: Color(0xFF9EC2E3),
    300: Color(0xFF77AAD7),
    400: Color(0xFF5A97CF),
    500: Color(_bluePrimaryValue),
    600: Color(0xFF377DC0),
    700: Color(0xFF2F72B9),
    800: Color(0xFF2768B1),
    900: Color(0xFF1A55A4),
  });
  static const int _bluePrimaryValue = 0xFF3D85C6;

  static const MaterialColor blueAccent =
      MaterialColor(_blueAccentValue, <int, Color>{
    100: Color(0xFFDAE9FF),
    200: Color(_blueAccentValue),
    400: Color(0xFF74ABFF),
    700: Color(0xFF5B9CFF),
  });
  static const int _blueAccentValue = 0xFFA7CAFF;

  static const MaterialColor pink =
      MaterialColor(_pinkPrimaryValue, <int, Color>{
    50: Color(0xFFF4EAEF),
    100: Color(0xFFE4CAD7),
    200: Color(0xFFD3A6BC),
    300: Color(0xFFC182A1),
    400: Color(0xFFB3688D),
    500: Color(_pinkPrimaryValue),
    600: Color(0xFF9E4671),
    700: Color(0xFF953D66),
    800: Color(0xFF8B345C),
    900: Color(0xFF7B2549),
  });
  static const int _pinkPrimaryValue = 0xFFA64D79;

  static const MaterialColor pinkAccent =
      MaterialColor(_pinkAccentValue, <int, Color>{
    100: Color(0xFFFFBCD7),
    200: Color(_pinkAccentValue),
    400: Color(0xFFFF5699),
    700: Color(0xFFFF3C8A),
  });
  static const int _pinkAccentValue = 0xFFFF89B8;

  static const MaterialColor green =
      MaterialColor(_greenPrimaryValue, <int, Color>{
    50: Color(0xFFEDF5EA),
    100: Color(0xFFD2E5CA),
    200: Color(0xFFB5D4A7),
    300: Color(0xFF97C284),
    400: Color(0xFF80B569),
    500: Color(_greenPrimaryValue),
    600: Color(0xFF62A048),
    700: Color(0xFF57973F),
    800: Color(0xFF4D8D36),
    900: Color(0xFF3C7D26),
  });
  static const int _greenPrimaryValue = 0xFF6AA84F;

  static const MaterialColor greenAccent =
      MaterialColor(_greenAccentValue, <int, Color>{
    100: Color(0xFFCDFFBE),
    200: Color(_greenAccentValue),
    400: Color(0xFF7FFF58),
    700: Color(0xFF6CFF3F),
  });
  static const int _greenAccentValue = 0xFFA6FF8B;

  static const MaterialColor orange =
      MaterialColor(_orangePrimaryValue, <int, Color>{
    50: Color(0xFFFCF2E7),
    100: Color(0xFFF8DEC3),
    200: Color(0xFFF3C89C),
    300: Color(0xFFEEB274),
    400: Color(0xFFEAA256),
    500: Color(_orangePrimaryValue),
    600: Color(0xFFE38932),
    700: Color(0xFFDF7E2B),
    800: Color(0xFFDB7424),
    900: Color(0xFFD56217),
  });
  static const int _orangePrimaryValue = 0xFFE69138;

  static const MaterialColor orangeAccent =
      MaterialColor(_orangeAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_orangeAccentValue),
    400: Color(0xFFFFC3A1),
    700: Color(0xFFFFB287),
  });
  static const int _orangeAccentValue = 0xFFFFE3D4;

  static const MaterialColor red = MaterialColor(_redPrimaryValue, <int, Color>{
    50: Color(0xFFF9E0E0),
    100: Color(0xFFF0B3B3),
    200: Color(0xFFE68080),
    300: Color(0xFFDB4D4D),
    400: Color(0xFFD42626),
    500: Color(_redPrimaryValue),
    600: Color(0xFFC70000),
    700: Color(0xFFC00000),
    800: Color(0xFFB90000),
    900: Color(0xFFAD0000),
  });
  static const int _redPrimaryValue = 0xFFCC0000;

  static const MaterialColor redAccent =
      MaterialColor(_redAccentValue, <int, Color>{
    100: Color(0xFFFFD7D7),
    200: Color(_redAccentValue),
    400: Color(0xFFFF7171),
    700: Color(0xFFFF5858),
  });
  static const int _redAccentValue = 0xFFFFA4A4;

  static const MaterialColor backgroundcolor =
      MaterialColor(_backgroundcolorPrimaryValue, <int, Color>{
    50: Color(0xFFFDFDFD),
    100: Color(0xFFFBFAF9),
    200: Color(0xFFF8F7F6),
    300: Color(0xFFF5F3F2),
    400: Color(0xFFF2F1EF),
    500: Color(_backgroundcolorPrimaryValue),
    600: Color(0xFFEEECEA),
    700: Color(0xFFECE9E7),
    800: Color(0xFFE9E7E4),
    900: Color(0xFFE5E2DF),
  });
  static const int _backgroundcolorPrimaryValue = 0xFFF0EEEC;

  static const MaterialColor backgroundcolorAccent =
      MaterialColor(_backgroundcolorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_backgroundcolorAccentValue),
    400: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
  });
  static const int _backgroundcolorAccentValue = 0xFFFFFFFF;

  static const MaterialColor secondry =
      MaterialColor(_secondryPrimaryValue, <int, Color>{
    50: Color(0xFFFFF8E1),
    100: Color(0xFFFFECB5),
    200: Color(0xFFFFE083),
    300: Color(0xFFFFD451),
    400: Color(0xFFFFCA2C),
    500: Color(_secondryPrimaryValue),
    600: Color(0xFFFFBB06),
    700: Color(0xFFFFB305),
    800: Color(0xFFFFAB04),
    900: Color(0xFFFF9E02),
  });
  static const int _secondryPrimaryValue = 0xFFFFC107;

  static const MaterialColor secondryAccent =
      MaterialColor(_secondryAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_secondryAccentValue),
    400: Color(0xFFFFE4BF),
    700: Color(0xFFFFD9A6),
  });
  static const int _secondryAccentValue = 0xFFFFFAF2;

  static const MaterialColor font =
      MaterialColor(_fontPrimaryValue, <int, Color>{
    50: Color(0xFFEFF0F0),
    100: Color(0xFFD8DADA),
    200: Color(0xFFBEC1C1),
    300: Color(0xFFA3A8A8),
    400: Color(0xFF909696),
    500: Color(_fontPrimaryValue),
    600: Color(0xFF747B7B),
    700: Color(0xFF697070),
    800: Color(0xFF5F6666),
    900: Color(0xFF4C5353),
  });
  static const int _fontPrimaryValue = 0xFF7C8383;

  static const MaterialColor fontAccent =
      MaterialColor(_fontAccentValue, <int, Color>{
    100: Color(0xFFBEFAFA),
    200: Color(_fontAccentValue),
    400: Color(0xFF52FFFF),
    700: Color(0xFF39FFFF),
  });
  static const int _fontAccentValue = 0xFF8EF6F6;
}

//Warning
const warningMain = Color(0xffEF6C00);
const warningBackground = Color(0xffFFF4E5);
const warningFont = Color(0xff663C00);

//Success
const successMain = Color(0xff5DBB63);
const successBackground = Color(0xffF1F8F1);
const successFont = Color(0xff265A29);

//Error
const errorMain = Color(0xffD32F2F);
const errorBackground = Color(0xffFDEDED);
const errorFont = Color(0xff5F2120);

//Info
const infoMain = Color(0xff0288D1);
const infoBackground = Color(0xffE5F6FD);
const infoFont = Color(0xff014361);

//Gold Silver Bronze
const goldColor = Color(0xffFFD700);
const silverColor = Color(0xffCDCDCD);
const bronzeColor = Color(0xffCD7F32);
